@extends('layouts.app')

@vite(['resources/css/industries.css'])

@section('content')
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Industries</h1>
        <a href="{{ route('industries.create') }}" class="btn btn-primary">Add New Industry</a>
    </div>

    <!-- Success Message -->
    @if(session('success'))
        <div id="success-message" class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>Success!</strong> {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <ul class="list-group">
        @forelse($industries as $industry)
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <div>
                    <a href="{{ route('industries.show', $industry->id) }}" class="text-decoration-none">{{ $industry->name }}</a>
                </div>
                <div>
                    <a href="{{ route('industries.edit', $industry->id) }}" class="btn btn-warning btn-sm"> <i class="fas fa-edit"></i> Edit</a>
                    <form action="{{ route('industries.destroy', $industry->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"> <i class="fas fa-trash-alt"></i> Delete</button>
                    </form>
                </div>
            </li>
        @empty
            <li class="list-group-item text-center">No industries found.</li>
        @endforelse
    </ul>

    <!-- Pagination Summary -->
    <div class="mt-3 text-center">
        <p>
            Showing {{ $industries->firstItem() }} to {{ $industries->lastItem() }} 
            of {{ $industries->total() }} results
        </p>
    </div>

    <!-- Pagination Links -->
    <div class="mt-3 d-flex justify-content-center">
        {{ $industries->links('pagination::bootstrap-4') }}
    </div>
</div>

<!-- JavaScript for Auto Dismiss -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const successMessage = document.getElementById('success-message');
        if (successMessage) {
            setTimeout(() => {
                successMessage.classList.add('fade');
                setTimeout(() => successMessage.remove(), 1000); // Smooth fade out
            }, 5000); // 5 seconds
        }
    });
</script>
@endsection
