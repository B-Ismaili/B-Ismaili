@extends('layouts.app')

@vite(['resources/css/industries.css'])

@section('content')
<div class="container">
    <h1>{{ $industry->name }}</h1>

    <div class="mb-3">
        <strong>Description:</strong>
        <p>{{ $industry->description }}</p>
    </div>

    <div class="mb-3">
        <strong>Icon:</strong><br>
        @if ($industry->icon)
            <img src="{{ $industry->icon }}" alt="{{ $industry->name }} Icon" style="width: 100px; height: auto;">
        @else
            <p>No icon available</p>
        @endif
    </div>
    <a href="{{ route('industries.edit', $industry->id) }}" class="btn btn-warning me-2">
        <i class="fas fa-edit"></i> Edit
    </a>
    <a href="{{ route('industries.index') }}" class="btn btn-secondary me-2">
        <i class="fas fa-arrow-left"></i> Back to List
    </a>

    <form action="{{ route('industries.destroy', $industry->id) }}" method="POST" style="display:inline;">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this industry?')">
            <i class="fas fa-trash-alt"></i> Delete
        </button>
    </form>
</div>
@endsection
