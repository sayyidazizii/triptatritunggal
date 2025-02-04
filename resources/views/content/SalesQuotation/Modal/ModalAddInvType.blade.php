{{-- Modal Tambahan untuk menambahkan data barang --}}
<div class="modal fade bs-modal-lg" id="addNamaBarang" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Barang</h4>
            </div>
            <div class="modal-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <a class="text-dark">Kategori<a class='red'> *</a></a>
                    {!! Form::select('item_category_id_modal',  $itemcategory, 0, ['class' => 'selection-search-clear select-form', 'id' => 'item_category_id_modal']) !!}
                </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nama Barang</a>
                            <input class="form-control input-bb" type="text" name="item_type_name" id="item_type_name"/>
                        </div>
                    </div>
            </div>
            <div class="row form-group">
                    <div class="col-md-6">
                        <a class="text-dark">Satuan</a>
                        {!! Form::select('item_unit_id_modal',  $itemunit, 0, ['class' => 'selection-search-clear select-form', 'id' => 'item_unit_id_modal']) !!}
                    </div>
                    <div class="col-md-6">
                            <a class="text-dark">Stok<a class='red'> *</a></a>
                            <input class="form-control input-bb" type="text" name="quantity_unit_modal" id="quantity_unit_modal"/>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id='cancel_btn_type'>Batal</button>
                <button type="button" class="btn btn-primary" id="btn_save" title="Save">
                    <i class="fa fa-plus"></i> Tambah
                </button>
            </div>
        </div>
        </div>
    </div>
</div>