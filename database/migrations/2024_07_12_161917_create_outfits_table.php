<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('outfits', function (Blueprint $table) {
            $table->id();
            $table->date('date');

            $table->unsignedBigInteger('upper_id');
            $table->foreign('upper_id')->references('id')->on('cloths');

            $table->unsignedBigInteger('lower_id')->nullable();
            $table->foreign('lower_id')->references('id')->on('cloths');

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
        Schema::dropIfExists('outfits');
    }
};
