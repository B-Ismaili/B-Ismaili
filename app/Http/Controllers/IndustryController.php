<?php

namespace App\Http\Controllers;

use App\Models\Industry;
use Illuminate\Http\Request;

class IndustryController extends Controller
{
    // Display a list of industries
    public function index()
    {
        $industries = Industry::paginate(10); // Fetch 10 industries per page
        return view('industries.index', compact('industries'));
    }

    // Show the form to create a new industry
    public function create()
    {
        return view('industries.create');
    }

    // Store a new industry
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'icon' => 'nullable|url',
        ]);

        Industry::create($request->only(['name', 'description', 'icon']));

        return redirect()->route('industries.index')->with('success', 'Industry created successfully.');
    }

    // Display a single industry
    public function show(Industry $industry)
    {
        return view('industries.show', compact('industry'));
    }

    // Show the form to edit an existing industry
    public function edit(Industry $industry)
    {
        return view('industries.edit', compact('industry'));
    }

    // Update an existing industry
    public function update(Request $request, Industry $industry)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'icon' => 'nullable|url',
        ]);

        $industry->update($request->only(['name', 'description', 'icon']));

        return redirect()->route('industries.index')->with('success', 'Industry updated successfully.');
    }

    // Delete an industry
    public function destroy(Industry $industry)
    {
        $industry->delete();

        return redirect()->route('industries.index')->with('success', 'Industry deleted successfully.');
    }
}