@extends('layouts.app')

@vite(['resources/css/services.css'])

@section('content')
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Services</h1>
        <a href="{{ route('services.create') }}" class="btn btn-primary">Add New Service</a>
    </div>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Service Name</th>
                <th>Category</th>
                <th>Industry</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($services as $service)
                <tr>
                    <td>{{ $loop->iteration + ($services->currentPage() - 1) * $services->perPage() }}</td>
                    <td><a href="{{ route('services.show', $service->id) }}">{{ $service->name }}</a></td>
                    <td>{{ $service->category->name ?? 'N/A' }}</td>
                    <td>{{ $service->industry->name ?? 'N/A' }}</td>
                    <td class="btn-actions">
                        <a href="{{ route('services.edit', $service->id) }}" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                        <form action="{{ route('services.destroy', $service->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i> Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="5" class="text-center">No services found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- Pagination Summary -->
    <div class="mt-3 text-center">
        <p>
            Showing {{ $services->firstItem() }} to {{ $services->lastItem() }} 
            of {{ $services->total() }} results
        </p>
    </div>

    <!-- Pagination Links -->
    <div class="mt-3 d-flex justify-content-center">
        {{ $services->links('pagination::bootstrap-4') }}
    </div>
</div>
@endsection

