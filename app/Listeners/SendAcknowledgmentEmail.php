<?php

namespace App\Listeners;

use App\Events\ContactMessageReceived;
use Illuminate\Support\Facades\Mail;

class SendAcknowledgmentEmail
{
    public function handle(ContactMessageReceived $event)
    {
        $message = $event->contactMessage;

        Mail::send([], [], function ($email) use ($message) {
            $email->to($message->email)
                ->subject('Message Received')
                ->setBody("Thank you for contacting us. We've received your message with the subject '{$message->subject}' and will respond soon.");
        });
    }
}