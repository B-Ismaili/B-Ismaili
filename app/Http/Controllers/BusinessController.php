<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BusinessController extends Controller
{
    public function home()
    {
        return view('home');
    }

    public function showForm()
    {
        return view('form');
    }

    public function storeData(Request $request)
    {

        $validated = $request->validate([
            'name' => 'required|alpha|max:15',
            'surname' => 'required|alpha|max:25',
            'email' => 'nullable|email',
        ]);

        session([
            'name' => $validated['name'],
            'surname' => $validated['surname'],
            'email' => $validated['email'] ?? null,
        ]);

        return redirect()->route('info');
    }

    public function showInfo()
    {
        return view('info');
    }

    public function clearSession()
    {
        session()->forget(['name', 'surname', 'email']);

        return redirect()->route('home');
    }
}
