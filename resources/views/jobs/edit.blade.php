@extends('layouts.app')

@vite(['resources/css/jobs.css'])

@section('content')
<div class="container">
    <h1 class="mb-4">Edit Job</h1>
    <form action="{{ route('jobs.update', $job->id) }}" method="POST" class="border p-4 rounded">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" id="title" class="form-control" value="{{ $job->title }}" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control" rows="4" required>{{ $job->description }}</textarea>
        </div>
        <div class="mb-3">
            <label for="type" class="form-label">Type</label>
            <select name="type" id="type" class="form-select" required>
                <option value="Part time" {{ $job->type == 'Part time' ? 'selected' : '' }}>Part time</option>
                <option value="Full time" {{ $job->type == 'Full time' ? 'selected' : '' }}>Full time</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="work_mode" class="form-label">Work Mode</label>
            <select name="work_mode" id="work_mode" class="form-select" required>
                <option value="Hybrid" {{ $job->work_mode == 'Hybrid' ? 'selected' : '' }}>Hybrid</option>
                <option value="On-site" {{ $job->work_mode == 'On-site' ? 'selected' : '' }}>On-site</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="location" class="form-label">Location</label>
            <input type="text" name="location" id="location" class="form-control" value="{{ $job->location }}" required>
        </div>
        <button type="submit" class="btn btn-primary">Update Job</button>
    </form>
</div>
@endsection
