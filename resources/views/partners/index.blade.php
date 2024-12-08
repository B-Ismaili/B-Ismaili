@extends('layouts.app')

@vite(['resources/css/partners.css'])

@section('content')
<div class="container">
    <h1>Partners</h1>
    <a href="{{ route('partners.create') }}" class="btn btn-primary mb-3">Add Partner</a>
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th>Company Name</th>
                <th>Industry</th>
                <th>Logo</th>
                <th>Collaboration Description</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($partners as $partner)
                <tr>
                    <td>{{ $partner->id }}</td>
                    <td>{{ $partner->company_name }}</td>
                    <td>{{ $partner->industry->name }}</td>
                    <td><img src="{{ $partner->logo }}" alt="{{ $partner->company_name }}" width="50"></td>
                    <td>{{ $partner->collaboration_description }}</td>
                    <td>
                        <a href="{{ route('partners.edit', $partner) }}" class="btn btn-sm btn-warning"><i class="fas fa-edit"></i> Edit</a>
                        <form action="{{ route('partners.destroy', $partner) }}" method="POST" style="display:inline;" class="delete-form">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><i class="fas fa-trash-alt"></i> Delete</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
    {{ $partners->links() }}
</div>

<!-- SweetAlert2 Script -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

@endsection
