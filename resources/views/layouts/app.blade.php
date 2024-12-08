<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Dashboard') }}</title>

    <!-- Vite and External CSS -->
    @vite([
        'resources/css/app.css', 
        'resources/css/layouts.css', 
        'resources/css/dashboard.css'
    ])
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

</head>
<body class="dashboard-body">
    <div class="container-fluid">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ route('dashboard') }}">
                    <div class="logo-container">
                        <img src="{{ asset('images/logo.png') }}" alt="Logo" class="logo-img">
                    </div>
                </a>
                
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav me-auto">
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('jobs*') ? 'active' : '' }}" href="{{ route('jobs.index') }}">
                                <i class="fas fa-briefcase"></i> Jobs
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('team_members*') ? 'active' : '' }}" href="{{ route('team_members.index') }}">
                                <i class="fas fa-users"></i> Team Members
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-bs-toggle="dropdown">
                                <i class="fas fa-tools"></i> Services
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="servicesDropdown">
                                <li>
                                    <a class="dropdown-item" href="{{ route('services.index') }}">All Services</a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="{{ route('service-categories.create') }}">Service Categories</a>
                                </li>
                            </ul>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('industries*') ? 'active' : '' }}" href="{{ route('industries.index') }}">
                                <i class="fas fa-industry"></i> Industries
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('partners*') ? 'active' : '' }}" href="{{ route('partners.index') }}">
                                <i class="fas fa-handshake"></i> Partners
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{ request()->is('testimonials*') ? 'active' : '' }}" href="{{ route('testimonials.index') }}">
                                <i class="fas fa-industry"></i> Testimonials
                            </a>
                        </li>
                    </ul>
                    @if(Auth::check())
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <form action="{{ route('logout') }}" method="POST" class="d-inline">
                                    @csrf
                                    <button type="submit" class="logout-btn">
                                        <i class="fas fa-sign-out-alt"></i> Logout
                                    </button>
                                </form>
                                
                            </li>
                        </ul>
                    @endif
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="container mt-4">
            @yield('content')
        </main>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
