DELIMITER $$

USE `ciptaprocpanel_triptatritunggal`$$

DROP TRIGGER /*!50032 IF EXISTS */ `insert_inv_warehouse_out`$$

CREATE
    /*!50017 DEFINER = 'daffa'@'%' */
    TRIGGER `insert_inv_warehouse_out` BEFORE INSERT ON `inv_warehouse_out` 
    FOR EACH ROW BEGIN
	DECLARE year_period 			VARCHAR(20);
	DECLARE month_period 			VARCHAR(20);
	DECLARE PERIOD 				VARCHAR(20);
	DECLARE tPeriod				INT;
	DECLARE nInvWarehouseOutNo		VARCHAR(20);
	DECLARE monthPeriod			VARCHAR(20);
	DECLARE lenInvWarehouseOutNo		DECIMAL(10);
	
	SET year_period = (YEAR(new.warehouse_out_date));
	
	SET month_period = (SELECT RIGHT(CONCAT('0', MONTH(new.warehouse_out_date)), 2));
	
	IF (month_period) = '01' THEN 
		SET monthPeriod = 'I';
	END IF;
	
	IF (month_period) = '02' THEN 
		SET monthPeriod = 'II';
	END IF;
	
	IF (month_period) = '03' THEN 
		SET monthPeriod = 'III';
	END IF;
	
	IF (month_period) = '04' THEN 
		SET monthPeriod = 'IV';
	END IF;	
	
	IF (month_period) = '05' THEN 
		SET monthPeriod = 'V';
	END IF;
	
	IF (month_period) = '06' THEN 
		SET monthPeriod = 'VI';
	END IF;
	
	IF (month_period) = '07' THEN 
		SET monthPeriod = 'VII';
	END IF;
	
	IF (month_period) = '08' THEN 
		SET monthPeriod = 'VIII';
	END IF;
	
	IF (month_period) = '09' THEN 
		SET monthPeriod = 'IX';
	END IF;
	
	IF (month_period) = '10' THEN 
		SET monthPeriod = 'X';
	END IF;
	
	IF (month_period) = '11' THEN 
		SET monthPeriod = 'XI';
	END IF;
	
	IF (month_period) = '12' THEN 
		SET monthPeriod = 'XII';
	END IF;
		
	SET PERIOD = (SELECT LEFT(TRIM(warehouse_out_no), 4) 
			FROM inv_warehouse_out
			WHERE RIGHT(TRIM(warehouse_out_no), 4) = year_period
			ORDER BY warehouse_out_id DESC 
			LIMIT 1);
		
	IF (PERIOD IS NULL ) THEN 
		SET PERIOD = "0000";
	END IF;
	
	SET tPeriod = CAST(PERIOD AS DECIMAL(10));
	
	SET tPeriod = tPeriod + 1;
	
	SET PERIOD = RIGHT(CONCAT('0000', TRIM(CAST(tPeriod AS CHAR(4)))), 4);
	
	SET nInvWarehouseOutNo = CONCAT(PERIOD, '/WO/', monthPeriod, '/', year_period);
		
	SET new.warehouse_out_no = nInvWarehouseOutNo;
    END;
$$

DELIMITER ;