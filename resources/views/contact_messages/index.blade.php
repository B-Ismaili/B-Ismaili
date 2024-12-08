@extends('layouts.app')

@vite(['resources/css/contact_messages.css'])

@section('content')
<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Contact Messages</h1>
        <h4>
            <span class="badge bg-danger">
                {{ $unreadCount }} Unread Messages
            </span>
        </h4>
    </div>

    <table class="table table-hover table-bordered">
        <thead class="table-primary">
            <tr>
                <th>#</th>
                <th>Subject</th>
                <th>Received At</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @forelse($messages as $message)
                <tr>
                    <td>{{ $loop->iteration + ($messages->currentPage() - 1) * $messages->perPage() }}</td>
                    <td>
                        {{ $message->subject }}
                        @if(!$message->is_read)
                            <span class="badge bg-danger">New</span>
                        @endif
                    </td>
                    <td>{{ $message->created_at->format('d M Y, h:i A') }}</td>
                    <td>
                        @if($message->is_read)
                            <span class="badge bg-success">Read</span>
                        @else
                            <span class="badge bg-danger">Unread</span>
                        @endif
                    </td>
                    <td>
                        <a href="{{ route('contact_messages.show', $message->id) }}" class="btn btn-sm btn-primary">View</a>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="5" class="text-center">No messages found.</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- Pagination Summary -->
    <div class="mt-3 text-center">
        <p>
            Showing {{ $messages->firstItem() }} to {{ $messages->lastItem() }} 
            of {{ $messages->total() }} results
        </p>
    </div>

    <!-- Pagination Links -->
    <div class="mt-3 d-flex justify-content-center">
        {{ $messages->links('pagination::bootstrap-4') }}
    </div>
</div>
@endsection
