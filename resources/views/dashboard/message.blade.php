@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4">Contact Messages</h1>

    <!-- Unread Messages Badge -->
    <div class="mb-3">
        <h4>
            <span class="badge bg-danger">
                {{ $unreadCount }} Unread Messages
            </span>
        </h4>
    </div>

    <!-- Messages List -->
    <ul class="list-group">
        @foreach($messages as $message)
            <li class="list-group-item d-flex justify-content-between align-items-center">
                <div>
                    <strong>{{ $message->subject }}</strong>
                    <p class="text-muted small mb-0">{{ $message->created_at->diffForHumans() }}</p>
                </div>
                <div>
                    <a href="{{ route('contact_messages.show', $message->id) }}" class="btn btn-primary btn-sm">View</a>
                    <form action="{{ route('contact_messages.destroy', $message->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this message?')">Delete</button>
                    </form>
                </div>
            </li>
        @endforeach
    </ul>

    <!-- Pagination -->
    <div class="d-flex justify-content-center mt-3">
        {{ $messages->links() }}
    </div>
</div>
@endsection
