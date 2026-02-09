<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('vehicle_assignments', function (Blueprint $table) {
            if (!Schema::hasColumn('vehicle_assignments', 'vehicle_id')) {
                $table->foreignId('vehicle_id')->nullable()->constrained('transport_vehicles')->nullOnDelete();
            }
            if (!Schema::hasColumn('vehicle_assignments', 'driver_user_id')) {
                $table->foreignId('driver_user_id')->nullable()->constrained('users')->nullOnDelete();
            }
            if (!Schema::hasColumn('vehicle_assignments', 'notify_admin')) {
                $table->boolean('notify_admin')->default(false);
            }
        });
    }

    public function down(): void
    {
        Schema::table('vehicle_assignments', function (Blueprint $table) {
            $table->dropForeign(['vehicle_id']);
            $table->dropForeign(['driver_user_id']);
            $table->dropColumn(['vehicle_id', 'driver_user_id', 'notify_admin']);
        });
    }
};
