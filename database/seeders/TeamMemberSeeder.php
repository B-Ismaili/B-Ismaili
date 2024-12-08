<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\TeamMember;
use App\Models\Position;

class TeamMemberSeeder extends Seeder
{
    public function run()
    {
        // Create positions
        $positions = Position::factory()->count(5)->create();

        // Seed team members with random positions
        TeamMember::factory()->count(10)->create();
    }
}