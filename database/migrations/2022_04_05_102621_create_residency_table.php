<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResidencyTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('residency', function (Blueprint $table) {
            $table->id();
            $table->string('nav_title')->nullable();
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->string('flag_img')->nullable();
            $table->longText('first_content')->nullable();
            $table->string('bg_img')->nullable();
            $table->string('alt_bg_img')->nullable();
            $table->longText('first_var_content')->nullable();
            $table->longText('second_var_content')->nullable();
            $table->longText('third_var_content')->nullable();
            $table->string('var_img')->nullable();
            $table->string('alt_var_img')->nullable();
            $table->longText('second_content')->nullable();
            $table->string('second_img')->nullable();
            $table->string('alt_second_img')->nullable();
            $table->longText('third_content')->nullable();
            $table->string('third_img')->nullable();
            $table->string('alt_third_img')->nullable();
            $table->longText('fourth_content')->nullable();
            $table->string('fourth_img')->nullable();
            $table->string('alt_fourth_img')->nullable();
            $table->longText('fifth_content')->nullable();
            $table->string('fifth_img')->nullable();
            $table->string('alt_fifth_img')->nullable();
            $table->string('slug')->nullable();
            $table->boolean('status')->default(0);
            $table->integer('sort_id')->nullable()->default(0);
            $table->string('seo_title')->nullable();
            $table->text('meta_description');
            $table->text('meta_keywords');
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
        Schema::dropIfExists('residency');
    }
}
