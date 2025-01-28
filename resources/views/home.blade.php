@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

<!-- jQuery -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- BS JavaScript -->
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript">
    $(window).on('load', function() {
        jQuery.noConflict();
        $('#alert').modal('show');
    });
</script>

@section('content')
    <br>
    <!-- Notifikasi Modal -->
    <div class="modal fade bs-modal-md text-dark" id="alert" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Notifikasi</h4>
                </div>
                <div class="modal-body">
                    <p>Hari ini ada {{ count($purchaseinvoice) ?? 0 }} Purchase Invoice dan {{ count($salesinvoice) ?? 0 }} Sales Invoice Jatuh Tempo</p>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- Menu Utama -->
    <div class="card border border-dark">
        <div class="card-header bg-dark">
            <h5 class="mb-0">Menu Utama</h5>
        </div>
        <div class="card-body">
            <div class="row">
                <!-- Card 1: Pembelian -->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-primary text-white">
                            <h5 class="card-title mb-0">Pembelian</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-arrow-right"></i> <a href="{{ route('purchase-order') }}" class="text-primary">Pergi ke Pembelian</a>
                                </li>
                                <li>
                                    <i class="fa fa-cogs"></i> Kelola transaksi pembelian, mulai dari Purchase Order hingga Persetujuan.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Card 2: Gudang -->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-success text-white">
                            <h5 class="card-title mb-0">Gudang</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-arrow-right"></i> <a href="{{ route('goods-received-note') }}" class="text-success">Pergi ke Gudang</a>
                                </li>
                                <li>
                                    <i class="fa fa-box"></i> Mengelola penerimaan barang, transfer gudang, dan stok barang.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Card 3: Penjualan -->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header bg-warning text-dark">
                            <h5 class="card-title mb-0">Penjualan</h5>
                        </div>
                        <div class="card-body">
                            <ul class="list-unstyled">
                                <li>
                                    <i class="fa fa-arrow-right"></i> <a href="{{ route('sales-quotation') }}" class="text-warning">Pergi ke Penjualan</a>
                                </li>
                                <li>
                                    <i class="fa fa-dollar-sign"></i> Kelola transaksi penjualan, mulai dari Sales Quotation hingga Sales Invoice.
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Grafik -->
            <div class="mt-4">
                <div class="card">
                    <div class="card-header bg-dark text-white">
                        Grafik Penjualan dan Pembelian
                    </div>
                    <div class="card-body">
                        <canvas id="dashboardChart"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    @include('footer')
@stop

@section('css')
@stop

@section('js')
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('dashboardChart').getContext('2d');
        const dashboardChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: @json($labels), // Dynamic month labels
                datasets: [
                    {
                        label: 'Penjualan',
                        data: @json($salesData), // Sales data
                        backgroundColor: 'rgba(54, 162, 235, 0.5)',
                    },
                    {
                        label: 'Pembelian',
                        data: @json($purchaseData), // Purchase data
                        backgroundColor: 'rgba(255, 99, 132, 0.5)',
                    }
                ]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    }
                }
            }
        });
    </script>
@stop
