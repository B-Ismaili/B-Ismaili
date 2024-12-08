@extends('layouts.app')

@vite(['resources/css/services.css'])


@section('content')
<div class="container">
    <h1>{{ $service->name }}</h1>
    <p><strong>Description:</strong> {{ $service->description }}</p>
    <p><strong>Category:</strong> {{ $service->category->name ?? 'N/A' }}</p>
    <p><strong>Industry:</strong> {{ $service->industry->name ?? 'N/A' }}</p>
    <a href="{{ route('services.edit', $service->id) }}" class="btn btn-primary">Edit</a>
    <a href="{{ route('services.index') }}" class="btn btn-secondary">Back to List</a>
    <form action="{{ route('services.destroy', $service->id) }}" method="POST" style="display: inline;">
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-danger">Delete</button>
    </form>
</div>
@endsection
