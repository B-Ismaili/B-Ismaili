<?php

namespace Database\Seeders;

use App\Models\Job;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class JobSeeder extends Seeder
{
    public function run()
    {
        $months = [
            ['month' => '2024-01', 'count' => 30],
            ['month' => '2024-02', 'count' => 35],
            ['month' => '2024-03', 'count' => 40],
            ['month' => '2024-04', 'count' => 50],
            ['month' => '2024-05', 'count' => 55],
            ['month' => '2024-06', 'count' => 60],
            ['month' => '2024-07', 'count' => 70],
            ['month' => '2024-08', 'count' => 80],
            ['month' => '2024-09', 'count' => 85],
            ['month' => '2024-10', 'count' => 90],
            ['month' => '2024-11', 'count' => 95],
            ['month' => '2024-12', 'count' => 100],
        ];

        foreach ($months as $monthData) {
            $date = Carbon::parse($monthData['month'] . '-01'); // First day of the month
            Job::factory()->count($monthData['count'])->create([
                'created_at' => $date,
                'updated_at' => $date,
            ]);
        }
    }
}