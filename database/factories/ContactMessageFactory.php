<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ContactMessageFactory extends Factory
{
    protected $model = \App\Models\ContactMessage::class;

    public function definition()
    {
        return [
            'subject' => $this->faker->sentence(),
            'message' => $this->faker->paragraph(),
            'email' => $this->faker->safeEmail(),
            'is_read' => $this->faker->boolean(50), // Randomly true or false
        ];
    }
}