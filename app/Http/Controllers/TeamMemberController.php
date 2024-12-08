<?php

namespace App\Http\Controllers;

use App\Models\TeamMember;
use App\Models\Position;
use Illuminate\Http\Request;

class TeamMemberController extends Controller
{
    public function index()
    {
        // Retrieve all team members from the database
        $team_members = TeamMember::with('position')->paginate(10); // Fetch with pagination
        return view('team_members.index', compact('team_members'));
    }

    public function create()
    {
        $positions = Position::all();
        return view('team_members.create', compact('positions'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'picture' => 'required|url',
            'name' => 'required|string|max:255',
            'surname' => 'required|string|max:255',
            'position_id' => 'required|exists:positions,id',
            'short_profile' => 'required|string',
        ]);

        TeamMember::create($validated);

        return redirect()->route('team_members.index')->with('success', 'Team member created successfully.');
    }

    public function show(TeamMember $teamMember)
    {
        return view('team_members.show', compact('teamMember'));
    }

    public function edit(TeamMember $teamMember)
    {
        $positions = Position::all();
        return view('team_members.edit', compact('teamMember', 'positions'));
    }

    public function update(Request $request, TeamMember $teamMember)
    {
        $validated = $request->validate([
            'picture' => 'required|url',
            'name' => 'required|string|max:255',
            'surname' => 'required|string|max:255',
            'position_id' => 'required|exists:positions,id',
            'short_profile' => 'required|string',
        ]);

        $teamMember->update($validated);

        return redirect()->route('team_members.index')->with('success', 'Team member updated successfully.');
    }

    public function destroy(TeamMember $teamMember)
    {
        $teamMember->delete();

        return redirect()->route('team_members.index')->with('success', 'Team member deleted successfully.');
    }
}