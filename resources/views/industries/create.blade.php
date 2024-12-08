@extends('layouts.app')

@vite(['resources/css/industries.css'])

@section('content')
<div class="container">
    <h1>Add New Industry</h1>
    <form action="{{ route('industries.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label for="name" class="form-label">Industry Name</label>
            <input type="text" name="name" id="name" class="form-control" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea name="description" id="description" class="form-control" rows="5"></textarea>
        </div>

        <div class="mb-3">
            <label for="icon" class="form-label">Industry Icon (URL)</label>
            <input type="url" name="icon" id="icon" class="form-control">
        </div>

        <button type="submit" class="btn btn-primary">Save Industry</button>
        <a href="{{ route('industries.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection
