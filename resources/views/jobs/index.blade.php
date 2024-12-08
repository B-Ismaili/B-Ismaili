@extends('layouts.app')

@vite(['resources/css/jobs.css'])

@section('content')
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Jobs</h1>
        <a href="{{ route('jobs.create') }}" class="btn btn-primary">Add New Job</a>
    </div>

    <div class="mb-4">
        <form method="GET" action="{{ route('jobs.index') }}">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <select name="month" class="form-control" onchange="this.form.submit()">
                        <option value="">-- Filter by Month --</option>
                        <option value="2024-01" {{ request('month') == '2024-01' ? 'selected' : '' }}>January 2024</option>
                        <option value="2024-02" {{ request('month') == '2024-02' ? 'selected' : '' }}>February 2024</option>
                        <option value="2024-03" {{ request('month') == '2024-03' ? 'selected' : '' }}>March 2024</option>
                        <option value="2024-04" {{ request('month') == '2024-04' ? 'selected' : '' }}>April 2024</option>
                        <option value="2024-05" {{ request('month') == '2024-05' ? 'selected' : '' }}>May 2024</option>
                        <option value="2024-06" {{ request('month') == '2024-06' ? 'selected' : '' }}>June 2024</option>
                        <option value="2024-07" {{ request('month') == '2024-07' ? 'selected' : '' }}>July 2024</option>
                        <option value="2024-08" {{ request('month') == '2024-08' ? 'selected' : '' }}>August 2024</option>
                        <option value="2024-09" {{ request('month') == '2024-09' ? 'selected' : '' }}>September 2024</option>
                        <option value="2024-10" {{ request('month') == '2024-10' ? 'selected' : '' }}>October 2024</option>
                        <option value="2024-11" {{ request('month') == '2024-11' ? 'selected' : '' }}>November 2024</option>
                        <option value="2024-12" {{ request('month') == '2024-12' ? 'selected' : '' }}>December 2024</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary">Filter</button>
                </div>
            </div>
        </form>
    </div>
    

    <!-- Jobs Table -->
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Title</th>
                <th>Description</th>
                <th>Type</th>
                <th>Work Mode</th>
                <th>Location</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($jobs as $job)
                <tr>
                    <td>{{ $loop->iteration + ($jobs->currentPage() - 1) * $jobs->perPage() }}</td>
                    <td>{{ $job->title }}</td>
                    <td>{{ Str::limit($job->description, 50) }}</td>
                    <td>{{ $job->type }}</td>
                    <td>{{ $job->work_mode }}</td>
                    <td>{{ $job->location }}</td>
                    <td>
                        <a href="{{ route('jobs.edit', $job->id) }}" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                        <form action="{{ route('jobs.destroy', $job->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i> Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="7" class="text-center">No jobs found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- Pagination Summary -->
    <div class="mt-3 text-center">
        <p>
            Showing {{ $jobs->firstItem() }} to {{ $jobs->lastItem() }} 
            of {{ $jobs->total() }} results
        </p>
    </div>

    <!-- Pagination Links -->
    <div class="mt-3 d-flex justify-content-center">
        {{ $jobs->appends(request()->query())->links('pagination::bootstrap-4') }}
    </div>
</div>
@endsection
