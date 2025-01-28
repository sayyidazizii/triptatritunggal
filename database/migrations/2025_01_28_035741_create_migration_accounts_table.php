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
        Schema::create('migration_accounts', function (Blueprint $table) {
            $table->id(); // Primary key
            $table->string('account_id')->nullable();
            $table->unsignedBigInteger('company_id')->nullable();
            $table->string('account_code')->nullable();
            $table->string('account_name')->nullable();
            $table->string('account_group')->nullable();
            $table->boolean('account_suspended')->default(false);
            $table->boolean('account_default_status')->default(false);
            $table->text('account_remark')->nullable();
            $table->boolean('account_status')->default(true);
            $table->string('account_token')->nullable();
            $table->boolean('parent_account_status')->default(false);
            $table->unsignedBigInteger('account_type_id')->nullable();
            $table->integer('data_state')->default(1);
            $table->unsignedBigInteger('created_id')->nullable();
            $table->unsignedBigInteger('updated_id')->nullable();
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
        Schema::dropIfExists('migration_accounts');
    }
};
