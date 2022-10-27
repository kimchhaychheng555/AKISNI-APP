<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableDataUserActive extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_user_active', function (Blueprint $table) {
            $table->id();
            $table->string('user_id')->nullable();
            $table->string('fullName')->nullable();
            $table->string('phoneNumber')->nullable();
            $table->string('username')->unique();
            $table->string('password')->nullable();
            $table->string('role')->nullable();
            $table->string('profile')->nullable();
            $table->string('active')->nullable();
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
        Schema::dropIfExists('table_data_user_active');
    }
}
