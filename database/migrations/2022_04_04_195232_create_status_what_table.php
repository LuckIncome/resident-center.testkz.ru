<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatusWhatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('status_what', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('what_id')->default(0)->nullable();
            $table->foreign('what_id')->references('id')->on('what')->onDelete('cascade');
            $table->unsignedBigInteger('status_id')->default(0)->nullable();
            $table->foreign('status_id')->references('id')->on('status')->onDelete('cascade');
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
        Schema::dropIfExists('status_what');
    }
}
