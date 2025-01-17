{{-- Modal Tambahan untuk menambahkan data barang --}}
<div class="modal fade bs-modal-lg" id="addkategorybarang" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Barang</h4>
            </div>
            <div class="modal-body">
            <meta name="csrf-token" content="{{ csrf_token() }}">
            <div class="row form-group">
                <div class="col-md-6">
                    <a class="text-dark">Kategori<a class='red'> *</a></a>
                    {!! Form::select('item_category_id_modal',  $itemcategory, 0, ['class' => 'selection-search-clear select-form', 'id' => 'item_category_id_modal']) !!}
                </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Type</a>
                            <input class="form-control input-bb" type="text" name="item_type_name" id="item_type_name"/>
                        </div>
                    </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                <div class="col-md-6">
                    <a class="text-dark">Satuan<a class='red'> *</a></a>
                    {!! Form::select('item_unit_id_modal',  $itemunit, 0, ['class' => 'selection-search-clear select-form', 'id' => 'item_unit_id_modal']) !!}
                </div>
                    <div class="form-group">
                        <a class="text-dark">Barcode Barang</a>
                        <input class="form-control input-bb" type="text" name="item_barcode" id="item_barcode" value=""/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12 ">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="item_remark" onChange="function_elements_add(this.name, this.value);" id="item_remark" ></textarea>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id='cancel_btn_customer'>Batal</button>
                <a class="btn btn-primary" onClick="addInvType()">Simpan</a>
            </div>
        </div>
        </div>
    </div>
</div>