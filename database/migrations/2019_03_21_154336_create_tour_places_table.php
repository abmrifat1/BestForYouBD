<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTourPlacesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tour_places', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('user_id')->unsigned()->index();
            $table->integer('sub_district_id')->unsigned()->index();
            $table->integer('star')->nullable();
            $table->float('rating')->nullable();
            $table->string('main_img',80)->default('default.jpg');
            $table->string('gallery_img_1',80)->default('default.jpg');
            $table->string('gallery_img_2',80)->default('default.jpg');
            $table->string('website_url',60)->nullable();
            $table->string('address',100)->nullable();
            $table->longText('description')->nullable();
            $table->integer('district_id')->nullable();
            $table->char('restaurant',5)->nullable();
            $table->char('cafe',5)->nullable();
            $table->char('car_parking',5)->nullable();
            $table->softDeletes();
            $table->string('isActive',50)->default('Active');
            $table->foreign('sub_district_id')->references('id')->on('sub_districts')->onDelete('no action')->onUpdate('no action');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('no action')->onUpdate('no action');
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
        Schema::dropIfExists('tour_places');
    }
}
