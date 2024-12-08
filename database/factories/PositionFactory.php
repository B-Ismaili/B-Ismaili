<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class PositionFactory extends Factory
{
    protected $model = \App\Models\Position::class;

    public function definition()
    {
        return [
            'name' => $this->faker->jobTitle(), // Generate a random job title
        ];
    }
}