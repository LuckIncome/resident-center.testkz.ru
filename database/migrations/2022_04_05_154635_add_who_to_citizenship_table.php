<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddWhoToCitizenshipTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('citizenship', function (Blueprint $table) {
            $table->longText('who')->nullable();
            $table->string('help')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('citizenship', function (Blueprint $table) {
            $table->longText('who')->nullable();
            $table->string('help')->nullable();
        });
    }
}
