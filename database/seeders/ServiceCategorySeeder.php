<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\ServiceCategory;

class ServiceCategorySeeder extends Seeder
{
    public function run()
    {
        $categories = ['Consulting', 'IT Services', 'Healthcare', 'Education', 'Finance'];
        foreach ($categories as $category) {
            ServiceCategory::create(['name' => $category]);
        }
    }
}