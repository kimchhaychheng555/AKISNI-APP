<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableDataUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_user', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('fullName')->nullable();
            $table->string('phoneNumber')->nullable();
            $table->string('username')->unique();
            $table->string('password');
            $table->string('role')->nullable();
            $table->string('profile')->nullable();
            $table->boolean('active')->nullable()->default(0);
            $table->double('lastLatitude')->nullable();
            $table->double('lastLongitude')->nullable();
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
        Schema::dropIfExists('table_data_user');
    }
}
