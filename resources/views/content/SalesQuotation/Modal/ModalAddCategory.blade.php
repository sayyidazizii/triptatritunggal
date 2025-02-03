{{-- Modal Tambahan untuk menambahkan data barang --}}
<div class="modal fade bs-modal-lg" id="addKetegori" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Kategori</h4>
            </div>
            <div class="modal-body">
            <div class="row form-group">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nama Barang</a>
                            <input class="form-control input-bb" type="text" name="item_type_name" id="item_type_name"/>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id='cancel_btn_category'>Batal</button>
                {{-- <a class="btn btn-primary" onClick="addInvType()">Simpan</a> --}}
                <a type="submit" name="Save" class="btn btn-primary" id="btn_save_category" title="Save" onclick="addCategory()">
                        <i class="fa fa-plus"></i> Tambah
                </a>
            </div>
        </div>
        </div>
    </div>
</div>