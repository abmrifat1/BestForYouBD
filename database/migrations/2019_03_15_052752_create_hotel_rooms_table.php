<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotel_rooms', function (Blueprint $table) {
            $table->integer('hotel_id')->unsigned()->index();
            $table->integer('room_type_id')->unsigned()->index();
            $table->integer('bedNumber')->nullable();
            $table->string('bedtype')->nullable();
            $table->char('self_check_in',5)->nullable();
            $table->char('bedroom_comforts',5)->nullable();
            $table->char('bathroom',5)->nullable();
            $table->char('tv',5)->nullable();
            $table->char('sofa',5)->nullable();
            $table->char('coffee_maker',5)->nullable();
            $table->char('hair_dryer',5)->nullable();
            $table->char('iron',5)->nullable();
            $table->char('heating',5)->nullable();
            $table->char('air_conditioning',5)->nullable();
            $table->char('wifi',5)->nullable();
            $table->char('smoke_detector',5)->nullable();
            $table->integer('price')->nullable();
            $table->integer('total_room')->nullable();
            $table->foreign('hotel_id')->references('id')->on('hotels')->onDelete('cascade')->onUpdate('no action');
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
        Schema::dropIfExists('hotel_rooms');
    }
}
