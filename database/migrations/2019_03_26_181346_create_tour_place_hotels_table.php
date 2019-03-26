<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTourPlaceHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tour_place_hotels', function (Blueprint $table) {
            $table->integer('tour_place_id')->unsigned()->index();
            $table->integer('hotel_id')->unsigned()->index();
            $table->foreign('tour_place_id')->references('id')->on('tour_places')->onDelete('cascade')->onUpdate('no action');
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
        Schema::dropIfExists('tour_place_hotels');
    }
}
