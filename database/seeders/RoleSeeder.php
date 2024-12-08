<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    public function run()
    {
        DB::table('roles')->insert([
            [
                'id' => 1, // Explicitly set the ID to 1
                'name' => 'admin',
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}