<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableDataLocationsList extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('data_locations_list', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('title');
            $table->string('company');
            $table->string('name');
            $table->string('installDate');
            $table->string('power');
            $table->string('type');
            $table->string('location');
            $table->double('latitude');
            $table->double('longitude');
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
        Schema::dropIfExists('table_data_locations_list');
    }
}
