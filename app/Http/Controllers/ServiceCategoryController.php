<?php

namespace App\Http\Controllers;

use App\Models\ServiceCategory;
use Illuminate\Http\Request;

class ServiceCategoryController extends Controller
{
    // Show the form to create a new service category
    public function create()
    {
        return view('service_categories.create');
    }

    // Store a new service category
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255|unique:service_categories,name',
        ]);

        ServiceCategory::create($request->only('name'));

        return redirect()->back()->with('success', 'Service category created successfully.');
    }
}