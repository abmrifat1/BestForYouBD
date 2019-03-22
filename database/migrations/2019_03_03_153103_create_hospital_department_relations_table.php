<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHospitalDepartmentRelationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hospital_department_relations', function (Blueprint $table) {
            $table->integer('hospital_id')->unsigned()->index();
            $table->integer('hospital_department_id')->unsigned()->index();
            $table->integer('doctors')->nullable();
            $table->integer('foreign_degree_doctors')->nullable();
            $table->foreign('hospital_id')->references('id')->on('hospitals')->onDelete('cascade')->onUpdate('no action');
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
        Schema::dropIfExists('hospital_department_relations');
    }
}
