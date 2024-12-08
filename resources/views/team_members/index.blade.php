@extends('layouts.app')

@vite(['resources/css/team-members.css'])

@section('content')
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Team Members</h1>
        <a href="{{ route('team_members.create') }}" class="btn btn-primary">Add New Team Member</a>
    </div>

    <!-- Success Message -->
    @if(session('success'))
        <div id="successMessage" class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endif

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Position</th>
                <th>Short Profile</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($team_members as $member)
                <tr>
                    <td>{{ $loop->iteration + ($team_members->currentPage() - 1) * $team_members->perPage() }}</td>
                    <td>{{ $member->name }}</td>
                    <td>{{ $member->surname }}</td>
                    <td>{{ $member->position->name ?? 'N/A' }}</td>
                    <td>{{ Str::limit($member->short_profile, 50) }}</td>
                    <td class="btn-actions">
                        <a href="{{ route('team_members.edit', $member->id) }}" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                        <form action="{{ route('team_members.destroy', $member->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i> Delete</button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="6" class="text-center">No team members found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- Pagination Summary -->
    <div class="mt-3 text-center">
        <p>
            Showing {{ $team_members->firstItem() }} to {{ $team_members->lastItem() }} 
            of {{ $team_members->total() }} results
        </p>
    </div>

    <!-- Pagination Links -->
    <div class="mt-3 d-flex justify-content-center">
        {{ $team_members->links('pagination::bootstrap-4') }}
    </div>
</div>

<!-- Auto-Hide Success Message -->
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const successMessage = document.getElementById('successMessage');
        if (successMessage) {
            setTimeout(() => {
                successMessage.style.display = 'none';
            }, 5000); // Hide after 5 seconds
        }
    });
</script>
@endsection
