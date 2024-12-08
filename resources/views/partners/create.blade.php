@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Add Partner</h1>
    <form action="{{ route('partners.store') }}" method="POST">
        @csrf
        <div class="mb-3">
            <label for="company_name" class="form-label">Company Name</label>
            <input type="text" name="company_name" id="company_name" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="industry_id" class="form-label">Industry</label>
            <select name="industry_id" id="industry_id" class="form-select">
                @foreach($industries as $industry)
                    <option value="{{ $industry->id }}">{{ $industry->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="mb-3">
            <label for="logo" class="form-label">Logo URL</label>
            <input type="url" name="logo" id="logo" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="collaboration_description" class="form-label">Collaboration Description</label>
            <textarea name="collaboration_description" id="collaboration_description" class="form-control" rows="4"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Save Partner</button>
    </form>
</div>
@endsection
