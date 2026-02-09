<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('feedback', function (Blueprint $table) {
            if (!Schema::hasColumn('feedback', 'participant_id')) {
                $table->foreignId('participant_id')->nullable()->after('id')->constrained('users')->nullOnDelete();
            }
            if (!Schema::hasColumn('feedback', 'programme_id')) {
                $table->foreignId('programme_id')->nullable()->after('participant_id')->constrained('programmes')->nullOnDelete();
            }
        });
    }

    public function down(): void
    {
        Schema::table('feedback', function (Blueprint $table) {
            $table->dropConstrainedForeignId('programme_id');
            $table->dropConstrainedForeignId('participant_id');
        });
    }
};
