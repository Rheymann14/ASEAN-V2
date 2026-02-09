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
        Schema::table('programmes', function (Blueprint $table) {
            if (!Schema::hasColumn('programmes', 'signatory_name')) {
                $table->string('signatory_name')->nullable()->after('pdf_url');
            }
            if (!Schema::hasColumn('programmes', 'signatory_title')) {
                $table->string('signatory_title')->nullable()->after('signatory_name');
            }
            if (!Schema::hasColumn('programmes', 'signatory_signature_url')) {
                $table->string('signatory_signature_url')->nullable()->after('signatory_title');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('programmes', function (Blueprint $table) {
            $table->dropColumn(['signatory_name', 'signatory_title', 'signatory_signature_url']);
        });
    }
};
