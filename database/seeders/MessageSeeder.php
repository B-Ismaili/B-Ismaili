<?php

namespace Database\Seeders;

use App\Models\ContactMessage;
use Illuminate\Database\Seeder;

class MessageSeeder extends Seeder
{
    public function run()
    {
        ContactMessage::factory()->count(50)->create(['is_read' => false]); // Unread
        ContactMessage::factory()->count(15)->create(['is_read' => true]);  // Read
    }
}