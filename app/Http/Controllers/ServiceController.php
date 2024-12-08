<?php

namespace App\Http\Controllers;

use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\Industry;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    // Display a list of services
    public function index()
    {
        // Paginate the services
        $services = Service::with(['category', 'industry'])->paginate(10); // Adjust the number of items per page

        return view('services.index', compact('services'));
    }

    // Show the form to create a new service
    public function create()
    {
        $categories = ServiceCategory::all();
        $industries = Industry::all();
        return view('services.create', compact('categories', 'industries'));
    }

    // Store a new service
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'service_category_id' => 'required|exists:service_categories,id',
            'industry_id' => 'required|exists:industries,id',
        ]);

        Service::create($request->all());

        return redirect()->route('services.index')->with('success', 'Service created successfully.');
    }

    // Display a single service
    public function show(Service $service)
    {
        return view('services.show', compact('service'));
    }

    // Show the form to edit an existing service
    public function edit(Service $service)
    {
        $categories = ServiceCategory::all();
        $industries = Industry::all();
        return view('services.edit', compact('service', 'categories', 'industries'));
    }

    // Update an existing service
    public function update(Request $request, Service $service)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'service_category_id' => 'required|exists:service_categories,id',
            'industry_id' => 'required|exists:industries,id',
        ]);

        $service->update($request->all());

        return redirect()->route('services.index')->with('success', 'Service updated successfully.');
    }

    // Delete a service
    public function destroy($id)
    {
        $service = Service::findOrFail($id); // Fetch the service
        $service->delete(); // Delete the service

        return redirect()->route('services.index')->with('success', 'Service deleted successfully!');
    }
}