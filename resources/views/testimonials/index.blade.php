@extends('layouts.app')

@vite(['resources/css/testimonials.css'])

@section('content')
<div class="container">
    <h1>Testimonials</h1>
    <a href="{{ route('testimonials.create') }}" class="btn btn-primary mb-3">Add Testimonial</a>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Client Name</th>
                <th>Client Position</th>
                <th>Client Company</th>
                <th>Profile Picture</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($testimonials as $testimonial)
                <tr>
                    <td>{{ $testimonial->id }}</td>
                    <td><a href="{{ route('testimonials.show', $testimonial->id) }}">{{ $testimonial->client_name }}</a></td>
                    <td>{{ $testimonial->client_position }}</td>
                    <td>{{ $testimonial->client_company }}</td>
                    <td><img src="{{ $testimonial->client_profile_picture }}" alt="Profile Picture" width="50"></td>
                    <td>
                        <a href="{{ route('testimonials.edit', $testimonial) }}" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                        <form action="{{ route('testimonials.destroy', $testimonial) }}" method="POST" style="display:inline;" class="delete-form">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i> Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {{ $testimonials->links() }}
</div>

<!-- SweetAlert2 Script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
@endsection
