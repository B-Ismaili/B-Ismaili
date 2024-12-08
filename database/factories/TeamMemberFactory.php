<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TeamMemberFactory extends Factory
{
    protected $model = \App\Models\TeamMember::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->firstName(),
            'surname' => $this->faker->lastName(),
            'position_id' => \App\Models\Position::factory(), // Create a related position
            'short_profile' => $this->faker->paragraph(),
        ];
    }
}