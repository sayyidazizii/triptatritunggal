{{-- Modal Tambahan untuk menambahkan data barang --}}
<div class="modal fade bs-modal-lg" id="addkategorybarang" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Kategori Barang</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <a class="text-dark">Kategori Barang</a>
                        <input class="form-control input-bb" type="text" name="item_category_name" id="item_category_name" value=""/>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id='cancel_btn_type'>Batal</button>
                <button type="button" class="btn btn-primary" id="btn_save_category" title="Save">
                    <i class="fa fa-plus"></i> Tambah
                </button>
            </div>
        </div>
    </div>
</div>