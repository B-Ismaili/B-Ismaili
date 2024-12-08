@extends('layouts.app')

@vite(['resources/css/contact_messages.css'])

@section('content')
<div class="container">
    <h1 class="mb-4">Contact Message Details</h1>

    <table class="table table-bordered">
        <tbody>
            <tr>
                <th>Subject:</th>
                <td>{{ $contactMessage->subject }}</td>
            </tr>
            <tr>
                <th>From:</th>
                <td>{{ $contactMessage->email }}</td>
            </tr>
            <tr>
                <th>Received At:</th>
                <td>{{ $contactMessage->created_at->format('d M Y, h:i A') }}</td>
            </tr>
            <tr>
                <th>Message:</th>
                <td>{{ $contactMessage->message }}</td>
            </tr>
        </tbody>
    </table>

    <div class="d-flex justify-content-between mt-3">
        <a href="{{ route('contact_messages.index') }}" class="btn btn-secondary">Back to Messages</a>
        <form action="{{ route('contact_messages.destroy', $contactMessage->id) }}" method="POST" style="display: inline-block;">
            @csrf
            @method('DELETE')
            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this message?');">Delete</button>
        </form>
    </div>
</div>
@endsection
