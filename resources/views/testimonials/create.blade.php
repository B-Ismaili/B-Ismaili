@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Add Testimonial</h1>
    <form action="{{ route('testimonials.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="testimonial_text" class="form-label">Testimonial Text</label>
            <textarea name="testimonial_text" id="testimonial_text" class="form-control" rows="4" required></textarea>
        </div>
        <div class="mb-3">
            <label for="client_name" class="form-label">Client Name</label>
            <input type="text" name="client_name" id="client_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="client_position" class="form-label">Client Position</label>
            <input type="text" name="client_position" id="client_position" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="client_company" class="form-label">Client Company</label>
            <input type="text" name="client_company" id="client_company" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="client_profile_picture" class="form-label">Profile Picture URL</label>
            <input type="url" name="client_profile_picture" id="client_profile_picture" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Save Testimonial</button>
    </form>
</div>
@endsection
