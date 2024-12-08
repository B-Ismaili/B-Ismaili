<?php

namespace Database\Factories;

use App\Models\Job;
use Illuminate\Database\Eloquent\Factories\Factory;

class JobFactory extends Factory
{
    protected $model = Job::class;

    public function definition()
    {
        return [
            'title' => $this->faker->jobTitle(),
            'description' => $this->faker->paragraph(),
            'type' => $this->faker->randomElement(['Part time', 'Full time']),
            'work_mode' => $this->faker->randomElement(['Hybrid', 'On-site']),
            'location' => $this->faker->city(),
        ];
    }
}