<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstitutesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('institutes', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('estDate',20)->nullable();
            $table->string('main_img',80)->default('default.jpg');
            $table->string('gallery_img_1',80)->default('default.jpg');
            $table->string('gallery_img_2',80)->default('default.jpg');
            $table->string('vice_chancellor',60)->nullable();
            $table->string('ownership_type',60)->nullable();
            $table->string('address',100)->nullable();
            $table->string('city',50)->nullable();
            $table->string('type',50)->nullable();
            $table->string('library',6)->nullable();
            $table->string('isActive',50)->default('Deactive');
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
        Schema::dropIfExists('institutes');
    }
}
