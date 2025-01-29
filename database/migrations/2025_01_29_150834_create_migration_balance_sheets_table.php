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
        Schema::create('migration_balance_sheets', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('balance_sheet_report_id');
            $table->unsignedBigInteger('company_id');
            $table->string('report_no');
            $table->unsignedBigInteger('account_id1');
            $table->string('account_code1');
            $table->string('account_name1');
            $table->unsignedBigInteger('account_id2')->nullable();
            $table->string('account_code2')->nullable();
            $table->string('account_name2')->nullable();
            $table->string('report_formula1')->nullable();
            $table->string('report_operator1')->nullable();
            $table->string('report_type1')->nullable();
            $table->integer('report_tab1')->nullable();
            $table->boolean('report_bold1')->default(false);
            $table->string('report_formula2')->nullable();
            $table->string('report_operator2')->nullable();
            $table->string('report_type2')->nullable();
            $table->integer('report_tab2')->nullable();
            $table->boolean('report_bold2')->default(false);
            $table->string('report_formula3')->nullable();
            $table->string('report_operator3')->nullable();
            $table->string('balance_report_type')->nullable();
            $table->string('balance_report_type1')->nullable();
            $table->boolean('data_state')->default(true);
            $table->unsignedBigInteger('created_id');
            $table->timestamp('created_on')->useCurrent();
            $table->timestamp('last_update')->useCurrent()->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('migration_balance_sheets');
    }
};
