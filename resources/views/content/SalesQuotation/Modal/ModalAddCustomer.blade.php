{{-- Modal Tambahan untuk menambahkan data customer --}}


<div class="modal fade bs-modal-lg" id="addcustomer" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Pelanggan</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nama Pelanggan</a>
                            <input class="form-control input-bb" type="text" name="customer_name" id="customer_name" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Provinsi<a class='red'> *</a></a>
                            {!! Form::select('province_id',  $coreprovince, 0, ['class' => 'selection-search-clear select-form', 'id' => 'province_id']) !!}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Kota<a class='red'> *</a></a>
                            {!! Form::select('city_id',  $corecity, 0, ['class' => 'selection-search-clear select-form', 'id' => 'city_id']) !!}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 ">
                        <a class="text-dark">Alamat Pelanggan</a>
                        <div class="">
                            <textarea rows="3" type="text" class="form-control input-bb" name="customer_address" onChange="elements_add(this.name, this.value);" id="customer_address" ></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Telp. Rumah</a>
                            <input class="form-control input-bb" type="text" name="customer_home_phone" id="customer_home_phone" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">No HP 1</a>
                            <input class="form-control input-bb" type="text" name="customer_mobile_phone1" id="customer_mobile_phone1" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">No HP 2</a>
                            <input class="form-control input-bb" type="text" name="customer_mobile_phone2" id="customer_mobile_phone2" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">No Fax</a>
                            <input class="form-control input-bb" type="text" name="customer_fax_number" id="customer_fax_number" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Email</a>
                            <input class="form-control input-bb" type="text" name="customer_email" id="customer_email" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Contact Person</a>
                            <input class="form-control input-bb" type="text" name="customer_contact_person" id="customer_contact_person" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nomor ID</a>
                            <input class="form-control input-bb" type="text" name="customer_id_number" id="customer_id_number" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">No Tax</a>
                            <input class="form-control input-bb" type="text" name="customer_tax_no" id="customer_tax_no" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Syarat Pembayaran</a>
                            <input class="form-control input-bb" type="text" name="customer_payment_terms" id="customer_payment_terms" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 ">
                        <a class="text-dark">Keterangan</a>
                        <div class="">
                            <textarea rows="3" type="text" class="form-control input-bb" name="customer_remark" onChange="elements_add(this.name, this.value);" id="customer_remark" ></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id='cancel_btn_customer'>Batal</button>
                <a class="btn btn-primary" onClick="addCustomer()">Simpan</a>
            </div>
        </div>
    </div>
</div>