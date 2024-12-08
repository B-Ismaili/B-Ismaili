{{-- resources/views/team_members/edit.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Edit Team Member</h1>
    <form action="{{ route('team_members.update', $teamMember->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="picture" class="form-label">Picture URL</label>
            <input type="url" class="form-control" id="picture" name="picture" value="{{ $teamMember->picture }}" required>
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{ $teamMember->name }}" required>
        </div>

        <div class="mb-3">
            <label for="surname" class="form-label">Surname</label>
            <input type="text" class="form-control" id="surname" name="surname" value="{{ $teamMember->surname }}" required>
        </div>

        <div class="mb-3">
            <label for="position_id" class="form-label">Position</label>
            <select class="form-select" id="position_id" name="position_id" required>
                @foreach($positions as $position)
                    <option value="{{ $position->id }}" {{ $teamMember->position_id == $position->id ? 'selected' : '' }}>{{ $position->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="short_profile" class="form-label">Short Profile</label>
            <textarea class="form-control" id="short_profile" name="short_profile" rows="5" required>{{ $teamMember->short_profile }}</textarea>
        </div>

        <button type="submit" class="px-5 py-2 bg-orange-500 text-white font-bold rounded-md hover:bg-orange-600">Update Team Member</button>
    </form>
</div>
@endsection
