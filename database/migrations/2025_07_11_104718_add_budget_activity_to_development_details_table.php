<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('development_details', function (Blueprint $table) {
             $table->decimal('budget_activity', 15, 2)->nullable()->after('reason');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('development_details', function (Blueprint $table) {
            $table->dropColumn('budget_activity');
        });
    }
};
