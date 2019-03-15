<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHotelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hotels', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->integer('user_id')->unsigned()->index();
            $table->date('estDate')->nullable();
            $table->integer('star')->nullable();
            $table->float('rating')->nullable();
            $table->string('main_img',80)->default('default.jpg');
            $table->string('gallery_img_1',80)->default('default.jpg');
            $table->string('gallery_img_2',80)->default('default.jpg');
            $table->string('owner',60)->nullable();
            $table->string('address',100)->nullable();
            $table->string('description',300)->nullable();
            $table->string('district',50)->nullable();
            $table->string('sub_district',50)->nullable();
            $table->string('isActive',50)->default('Active');
            $table->char('restaurant',2)->nullable();
            $table->char('cafe',2)->nullable();
            $table->softDeletes();
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
        Schema::dropIfExists('hotels');
    }
}
