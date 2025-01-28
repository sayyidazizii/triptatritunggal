<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('migration_profit_losses', function (Blueprint $table) {
            $table->id('profit_loss_report_id'); // Primary key
            $table->unsignedBigInteger('company_id'); // ID perusahaan
            $table->unsignedBigInteger('format_id'); // ID format laporan
            $table->integer('report_no'); // Nomor laporan
            $table->unsignedBigInteger('account_type_id'); // ID tipe akun
            $table->unsignedBigInteger('account_id'); // ID akun
            $table->string('account_code', 50); // Kode akun
            $table->string('account_name', 255); // Nama akun
            $table->text('report_formula')->nullable(); // Formula laporan
            $table->string('report_operator', 10)->nullable(); // Operator laporan
            $table->string('report_type', 50)->nullable(); // Tipe laporan
            $table->string('report_tab', 50)->nullable(); // Tab laporan
            $table->boolean('report_bold')->default(false); // Apakah teks dicetak tebal
            $table->string('data_state', 50)->default('active'); // Status data
            $table->unsignedBigInteger('created_id'); // ID pembuat data
            $table->timestamps(); // created_at dan updated_at
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('migration_profit_losses');
    }
};
