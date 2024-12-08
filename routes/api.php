<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ContactMessageController;

// Store Contact Messages via API
Route::post('/contact_messages', [ContactMessageController::class, 'store'])->name('contact_messages.store');