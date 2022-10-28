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
            $table->string('title')->nullable();
            $table->string('company')->nullable();
            $table->string('name')->nullable();
            $table->string('installDate')->nullable();
            $table->string('power')->nullable();
            $table->string('type')->nullable();
            $table->string('location')->nullable();
            $table->string('image')->nullable();
            $table->double('latitude')->nullable();
            $table->double('longitude')->nullable();
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
