<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ContactMessage;
use Illuminate\Support\Facades\Log;


class ContactMessageController extends Controller
{
    public function store(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|email',
            'subject' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        // Save the message
        ContactMessage::create($validated);

        // Log validated data
        Log::info('Validated Data:', $validated);

        return response()->json([
            'message' => "Thank you, {$validated['email']}, your message has been received."
        ], 200);
    }

    public function index(Request $request)
    {
        // Paginate messages (10 per page)
        $messages = ContactMessage::orderBy('created_at', 'desc')->paginate(10);

        // Count unread messages
        $unreadCount = ContactMessage::where('is_read', false)->count();

        return view('contact_messages.index', compact('messages', 'unreadCount'));
    }


    public function markAsRead($id)
    {
        $message = ContactMessage::findOrFail($id);
        $message->update(['is_read' => true]);

        return redirect()->back()->with('success', 'Message marked as read.');
    }




    // Show a specific message
    public function show($id)
    {
        $contactMessage = ContactMessage::findOrFail($id);

        // Mark message as read if unread
        if (!$contactMessage->is_read) {
            $contactMessage->update(['is_read' => true]);
        }

        return view('contact_messages.show', compact('contactMessage'));
    }

    // Soft delete a message
    public function destroy($id)
    {
        $contactMessage = ContactMessage::findOrFail($id);
        $contactMessage->delete();

        return redirect()->route('contact_messages.index')->with('success', 'Message deleted successfully.');
    }
}