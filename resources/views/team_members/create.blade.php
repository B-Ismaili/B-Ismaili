{{-- resources/views/team_members/create.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Create New Team Member</h1>
    <form action="{{ route('team_members.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label for="picture" class="form-label">Picture URL</label>
            <input type="url" class="form-control" id="picture" name="picture" value="{{ old('picture') }}" required>
        </div>

        <div class="mb-3">
            <label for="name" class="form-label">Name</label>
            <input type="text" class="form-control" id="name" name="name" value="{{ old('name') }}" required>
        </div>

        <div class="mb-3">
            <label for="surname" class="form-label">Surname</label>
            <input type="text" class="form-control" id="surname" name="surname" value="{{ old('surname') }}" required>
        </div>

        <div class="mb-3">
            <label for="position_id" class="form-label">Position</label>
            <select class="form-select" id="position_id" name="position_id" required>
                @foreach($positions as $position)
                    <option value="{{ $position->id }}">{{ $position->name }}</option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="short_profile" class="form-label">Short Profile</label>
            <textarea class="form-control" id="short_profile" name="short_profile" rows="5" required>{{ old('short_profile') }}</textarea>
        </div>

        <button type="submit" class="px-5 py-2 bg-orange-500 text-white font-bold rounded-md hover:bg-orange-600">Create Team Member</button>
    </form>
</div>
@endsection
