<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAboutsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('abouts', function (Blueprint $table) {
            $table->id();
            $table->string('title')->nullable();
            $table->text('excerpt')->nullable();
            $table->string('image')->nullable();
            $table->string('adv_first_image')->nullable();
            $table->string('adv_first_title')->nullable();
            $table->text('adv_first_excerpt')->nullable();
            $table->string('adv_second_image')->nullable();
            $table->string('adv_second_title')->nullable();
            $table->text('adv_second_excerpt')->nullable();
            $table->string('adv_third_image')->nullable();
            $table->string('adv_third_title')->nullable();
            $table->text('adv_third_excerpt')->nullable();
            $table->string('adv_fouth_image')->nullable();
            $table->string('adv_fouth_title')->nullable();
            $table->text('adv_fouth_excerpt')->nullable();
            $table->longText('content')->nullable();
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
        Schema::dropIfExists('abouts');
    }
}
