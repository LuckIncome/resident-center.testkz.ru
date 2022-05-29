<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCitizenshipDocumentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('citizenship_document', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('document_id')->default(0)->nullable();
            $table->foreign('document_id')->references('id')->on('document')->onDelete('cascade');
            $table->unsignedBigInteger('citizenship_id')->default(0)->nullable();
            $table->foreign('citizenship_id')->references('id')->on('citizenship')->onDelete('cascade');
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
        Schema::dropIfExists('citizenship_document');
    }
}
