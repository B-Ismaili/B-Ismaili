@extends('layouts.app')

@vite(['resources/css/services.css'])

@section('content')
<div class="container">
    <h1>Edit Service</h1>
    <form action="{{ route('services.update', $service->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="mb-3">
            <label for="name" class="form-label">Service Name</label>
            <input type="text" name="name" id="name" class="form-control" value="{{ $service->name }}" required>
        </div>
        <div class="mb-3">
            <label for="description" class="form-label">Service Description</label>
            <textarea name="description" id="description" class="form-control" rows="4" required>{{ $service->description }}</textarea>
        </div>
        <div class="mb-3">
            <label for="service_category_id" class="form-label">Service Category</label>
            <select name="service_category_id" id="service_category_id" class="form-select" required>
                @foreach($categories as $category)
                    <option value="{{ $category->id }}" {{ $service->service_category_id == $category->id ? 'selected' : '' }}>
                        {{ $category->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="industry_id" class="form-label">Service Industry</label>
            <select name="industry_id" id="industry_id" class="form-select" required>
                @foreach($industries as $industry)
                    <option value="{{ $industry->id }}" {{ $service->industry_id == $industry->id ? 'selected' : '' }}>
                        {{ $industry->name }}
                    </option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="px-5 py-2 bg-orange-500 text-white font-bold rounded-md hover:bg-orange-600">Update Service</button>
        <a href="{{ route('services.index') }}" class="btn btn-secondary">Cancel</a>
    </form>
</div>
@endsection
