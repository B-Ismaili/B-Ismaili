@extends('layouts.app')

@vite(['resources/css/industries.css'])

@section('content')
<div class="container">
    <h1>Edit Industry</h1>
    <form action="{{ route('industries.update', $industry->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="name" class="form-label">Industry Name</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ $industry->name }}" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control" rows="5">{{ $industry->description }}</textarea>
        </div>

        <div class="mb-3">
            <label for="icon" class="form-label">Industry Icon (URL)</label>
            <input type="url" name="icon" id="icon" class="form-control" value="{{ $industry->icon }}">
        </div>

        <button type="submit" class="btn btn-primary">Update Industry</button>
        <a href="{{ route('industries.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection
