<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInstituteDepartmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('institute_departments', function (Blueprint $table) {
            $table->integer('institute_id')->unsigned()->index();
            $table->integer('department_id')->unsigned()->index();
            $table->integer('cost')->nullable();
            $table->integer('students')->nullable();
            $table->integer('faculty_members')->nullable();
            $table->string('IEEB')->nullable();
            $table->integer('credit')->nullable();
            $table->integer('computer')->nullable();
            $table->foreign('institute_id')->references('id')->on('institutes')->onDelete('cascade')->onUpdate('no action');
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
        Schema::dropIfExists('institute_departments');
    }
}
