<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Position;

class PositionSeeder extends Seeder
{
    public function run()
    {
        $positions = [
            ['name' => 'Manager'],
            ['name' => 'Developer'],
            ['name' => 'Designer'],
            ['name' => 'Tester'],
            ['name' => 'HR Specialist'],
        ];

        foreach ($positions as $position) {
            Position::create($position);
        }
    }
}