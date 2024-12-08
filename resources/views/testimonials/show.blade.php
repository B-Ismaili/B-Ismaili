@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Testimonial Details</h1>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Client: {{ $testimonial->client_name }}</h5>
            <p class="card-text"><strong>Position:</strong> {{ $testimonial->client_position }}</p>
            <p class="card-text"><strong>Company:</strong> {{ $testimonial->client_company }}</p>
            <p class="card-text"><strong>Testimonial:</strong></p>
            <blockquote class="blockquote">
                <p>{{ $testimonial->testimonial_text }}</p>
            </blockquote>
            <div class="mt-4">
                @if($testimonial->client_profile_picture)
                <img src="{{ $testimonial->client_profile_picture }}" alt="Profile Picture" class="img-thumbnail" style="max-width: 150px;">
                @else
                <p>No profile picture provided.</p>
                @endif
            </div>
        </div>
        <div class="card-footer text-end">
            <a href="{{ route('testimonials.edit', $testimonial) }}" class="btn btn-warning"><i class="fas fa-edit"></i> Edit</a>
            <form action="{{ route('testimonials.destroy', $testimonial) }}" method="POST" class="d-inline">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this testimonial?')">
                    <i class="fas fa-trash-alt"></i> Delete
                </button>
            </form>
            <a href="{{ route('testimonials.index') }}" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back to List</a>
        </div>
    </div>
</div>
@endsection
