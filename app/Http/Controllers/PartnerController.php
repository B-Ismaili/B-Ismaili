<?php

namespace App\Http\Controllers;

use App\Models\Partner;
use App\Models\Industry;
use Illuminate\Http\Request;

class PartnerController extends Controller
{
    public function index()
    {
        $partners = Partner::with('industry')->paginate(10);
        return view('partners.index', compact('partners'));
    }

    public function create()
    {
        $industries = Industry::all();
        return view('partners.create', compact('industries'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'company_name' => 'required|string|max:255',
            'industry_id' => 'required|exists:industries,id',
            'logo' => 'required|url',
            'collaboration_description' => 'required|string',
        ]);

        Partner::create($validated);

        return redirect()->route('partners.index')->with('success', 'Partner added successfully.');
    }

    public function edit(Partner $partner)
    {
        $industries = Industry::all();
        return view('partners.edit', compact('partner', 'industries'));
    }

    public function update(Request $request, Partner $partner)
    {
        $validated = $request->validate([
            'company_name' => 'required|string|max:255',
            'industry_id' => 'required|exists:industries,id',
            'logo' => 'required|url',
            'collaboration_description' => 'required|string',
        ]);

        $partner->update($validated);

        return redirect()->route('partners.index')->with('success', 'Partner updated successfully.');
    }


    public function destroy(Partner $partner)
    {
        $partner->delete();

        return redirect()->route('partners.index')->with('success', 'Partner deleted successfully.');
    }
}