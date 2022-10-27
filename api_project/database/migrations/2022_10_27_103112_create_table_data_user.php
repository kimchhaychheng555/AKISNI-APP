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
            $table->string('fullName');
            $table->string('phoneNumber');
            $table->string('username')->unique();
            $table->string('password');
            $table->string('role');
            $table->string('profile');
            $table->string('active');
            $table->double('lastLatitude');
            $table->double('lastLongitude');
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
