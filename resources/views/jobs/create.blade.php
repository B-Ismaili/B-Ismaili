@extends('layouts.app')

@vite(['resources/css/jobs.css'])

@section('content')
<div class="container">
    <h1 class="mb-4">Create Job</h1>
    <form action="{{ route('jobs.store') }}" method="POST" class="border p-4 rounded">
        @csrf
        <!-- Title -->
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" name="title" id="title" class="form-control" placeholder="Job Title" required>
        </div>

        <!-- Description -->
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control" placeholder="Job Description" rows="4" required></textarea>
        </div>

        <!-- Type -->
        <div class="mb-3">
            <label for="type" class="form-label">Type</label>
            <select name="type" id="type" class="form-select" required>
                <option value="" disabled selected>Select Type</option>
                <option value="Part time">Part time</option>
                <option value="Full time">Full time</option>
            </select>
        </div>

        <!-- Work Mode -->
        <div class="mb-3">
            <label for="work_mode" class="form-label">Work Mode</label>
            <select name="work_mode" id="work_mode" class="form-select" required>
                <option value="" disabled selected>Select Work Mode</option>
                <option value="Hybrid">Hybrid</option>
                <option value="On-site">On-site</option>
            </select>
        </div>

        <!-- Location -->
        <div class="mb-3">
            <label for="location" class="form-label">Location</label>
            <input type="text" name="location" id="location" class="form-control" placeholder="Job Location" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary">Create Job</button>
    </form>
</div>
@endsection
