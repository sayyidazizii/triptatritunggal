DELIMITER $$

USE `ciptaprocpanel_triptatritunggal`$$

DROP TRIGGER /*!50032 IF EXISTS */ `insert_inv_item_stock_card_out`$$

CREATE
    /*!50017 DEFINER = 'daffa'@'%' */
    TRIGGER `insert_inv_item_stock_card_out` AFTER INSERT ON `sales_delivery_note_item` 
    FOR EACH ROW BEGIN
    DECLARE nOpeningBalance DECIMAL(20,5); 
    DECLARE nLastOpeningBalance DECIMAL(20,5);  
    DECLARE nQuantityOut DECIMAL(20,5);
    DECLARE nWarehouseID INT(10);
    DECLARE nTransactionID BIGINT(22);
    DECLARE nTransactionType DECIMAL(10);
    DECLARE nTransactionCode VARCHAR(20);
    DECLARE nTransactionDate DATE;
    DECLARE nItemStockID BIGINT(22);
    DECLARE nFirstItemStockID BIGINT(22);

    -- Menentukan warehouse_id dan transaction info
    SET nWarehouseID = (SELECT warehouse_id FROM sales_delivery_note 
                        WHERE sales_delivery_note_id = new.sales_delivery_note_id);
    SET nTransactionType = 1;
    SET nTransactionID = new.sales_delivery_note_id;
    SET nTransactionDate = (SELECT sales_delivery_note_date FROM sales_delivery_note
                             WHERE sales_delivery_note_id = new.sales_delivery_note_id);
    SET nTransactionCode = CONCAT('SDN-', CAST(nTransactionID AS CHAR));  -- Perbaikan menggunakan CONCAT

    -- Mendapatkan saldo terakhir
    SET nLastOpeningBalance = (SELECT last_balance FROM inv_item_stock_card
                               WHERE item_type_id = new.item_type_id AND warehouse_id = nWarehouseID
                               ORDER BY item_stock_card_id DESC LIMIT 1);

    -- Mendapatkan jumlah barang yang keluar
    SET nQuantityOut = new.quantity;

    -- Menentukan saldo awal
    IF (nLastOpeningBalance IS NULL) THEN
        SET nOpeningBalance = 0;
        SET nLastOpeningBalance = 0 - nQuantityOut;
    ELSE
        SET nOpeningBalance = nLastOpeningBalance;
        SET nLastOpeningBalance = nLastOpeningBalance - nQuantityOut;
    END IF;

    -- Mendapatkan ID stok item terakhir
    SET nItemStockID = (SELECT item_stock_id FROM inv_item_stock
                        WHERE item_type_id = new.item_type_id
                        ORDER BY item_stock_id DESC LIMIT 1);

    -- Mendapatkan ID stok item pertama jika ada
    SELECT AUTO_INCREMENT INTO nFirstItemStockID
    FROM information_schema.tables
    WHERE table_name = 'inv_item_stock'
    AND table_schema = DATABASE();

    -- Jika tidak ada item stok terakhir, gunakan ID stok item pertama
    IF (nItemStockID IS NULL) THEN
        SET nItemStockID = nFirstItemStockID;
    END IF;

    -- Menyimpan perubahan stok ke dalam tabel inv_item_stock_card
    INSERT INTO inv_item_stock_card (
        item_stock_id, item_category_id, item_type_id, item_unit_id, warehouse_id,
        transaction_id, transaction_type, transaction_code, transaction_date,
        opening_balance, item_stock_card_out, last_balance
    )
    VALUES (
        nItemStockID,  -- Menggunakan nItemStockID
        new.item_category_id, new.item_type_id, new.item_unit_id, nWarehouseID,
        nTransactionID, nTransactionType, nTransactionCode, nTransactionDate,
        nOpeningBalance, nQuantityOut, nLastOpeningBalance  -- Saldo akhir yang baru
    );

END;
$$

DELIMITER ;