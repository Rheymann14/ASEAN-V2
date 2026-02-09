<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (!Schema::hasColumn('users', 'display_id')) {
                $table->string('display_id', 30)->nullable()->unique()->after('id');
            }
            if (!Schema::hasColumn('users', 'qr_token')) {
                $table->uuid('qr_token')->nullable()->unique()->after('display_id');
            }
            if (!Schema::hasColumn('users', 'qr_payload')) {
                $table->text('qr_payload')->nullable()->after('qr_token');
            }
        });
    }

    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropUnique(['display_id']);
            $table->dropUnique(['qr_token']);
            $table->dropColumn(['display_id', 'qr_token', 'qr_payload']);
        });
    }
};
