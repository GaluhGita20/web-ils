<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateComponentSejarahsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('component_sejarahs', function (Blueprint $table) {
            $table->id();
            $table->string('slug');
            $table->string('header');
            $table->string('title');
            $table->string('sub_title');
            $table->text('desc_left');
            $table->text('desc_right');
            $table->string('image');
            $table->integer('status_aktif')->default('1');
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
        Schema::dropIfExists('component_sejarahs');
    }
}
