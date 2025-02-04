<div class="modal fade bs-modal-lg" id="addunit" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Satuan Barang</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Kode Satuan Barang</a>
                            <input class="form-control input-bb" type="text" name="item_unit_code" id="item_unit_code" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nama Satuan Barang</a>
                            <input class="form-control input-bb" type="text" name="item_unit_name" id="item_unit_name" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Keterangan</a>
                            <input class="form-control input-bb" type="text" name="item_unit_remark" id="item_unit_remark" value=""/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" id='cancel-btn-unit'>Batal</button>
                <a class="btn btn-primary btn-sm" onClick="addUnit()">Simpan</a>
            </div>
        </div>
    </div>
</div>