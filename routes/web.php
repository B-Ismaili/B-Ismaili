<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('home');
})->name('home');

Route::get('/form', function () {
    return view('form');
})->name('form');

Route::post('/form', function (Request $request) {
    $validated = $request->validate([
        'name' => 'required|alpha|max:15',
        'surname' => 'required|alpha|max:25',
        'email' => 'nullable|email',
    ]);

    session([
        'name' => $request->name,
        'surname' => $request->surname,
        'email' => $request->email,
    ]);

    return redirect()->route('info');
})->name('form.submit');

Route::get('/info', function () {
    return view('info');
})->name('info');


Route::post('/logout', function () {
    session()->flush();
    return redirect()->route('home');
})->name('logout');

Route::post('/clear', function () {
    session()->flush();
    return redirect()->route('home');
})->name('clear');
