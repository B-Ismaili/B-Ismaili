<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\JobController;
use App\Http\Controllers\TeamMemberController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\IndustryController;
use App\Http\Controllers\ContactMessageController;
use App\Http\Controllers\TestimonialController;
use App\Http\Controllers\ServiceCategoryController;
use App\Http\Controllers\PartnerController;

// Welcome Page
Route::get('/', function () {
    return view('welcome');
});
Route::get('/jobs/export', [JobController::class, 'export'])->name('jobs.export');

// Dashboard
Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard')->middleware('auth');

// Profile Management
Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

// Jobs Resource
Route::resource('jobs', JobController::class)->middleware('auth');


// Team Members Resource
Route::resource('team_members', TeamMemberController::class)->middleware('auth');

// Services Resource
Route::resource('services', ServiceController::class)->middleware('auth');


// Industries Resource
Route::resource('industries', IndustryController::class)->middleware('auth');

// Testimonials Resource
Route::resource('testimonials', TestimonialController::class)->middleware('auth');

// Contact Messages
Route::resource('contact_messages', ContactMessageController::class)
    ->only(['index', 'show', 'destroy'])
    ->middleware('auth');

Route::patch('/contact-messages/{id}/mark-as-read', [ContactMessageController::class, 'markAsRead'])
    ->name('contact_messages.markAsRead');


Route::get('/profile', [ProfileController::class, 'index'])->name('profile');

// Service Categories Resource
Route::resource('service-categories', ServiceCategoryController::class)
    ->only(['create', 'store'])
    ->middleware('auth');

// Custom Routes for Messages
Route::get('/messages/{message}', [DashboardController::class, 'showMessage'])->name('messages.show')->middleware('auth');
Route::delete('/messages/{message}', [DashboardController::class, 'destroyMessage'])->name('messages.destroy')->middleware('auth');

Route::resource('partners', PartnerController::class)->middleware('auth');
Route::get('/partners/{partner}/edit', [PartnerController::class, 'edit'])->name('partners.edit');
Route::put('/partners/{partner}', [PartnerController::class, 'update'])->name('partners.update');
Route::delete('/partners/{partner}', [PartnerController::class, 'destroy'])->name('partners.destroy');


Route::resource('testimonials', TestimonialController::class)->middleware('auth');
Route::resource('testimonials', TestimonialController::class)->except(['show']);










require __DIR__ . '/auth.php';