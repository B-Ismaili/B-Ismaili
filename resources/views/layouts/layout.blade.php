<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title')</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="{{ asset('css/styles.css') }}">
</head>

<body>
    <!-- Background Image + Navbar -->

    <div class="background-image" style="background-image: url('@yield('background-image')');">
    </div>
    <!-- Centered Content -->
    <div class="centered-content">
        @yield('content')
        <!-- The "Welcome to My Blog" will be displayed here -->
    </div>
    <div class="container-navbar">
        <nav>
            <!-- Blog Logo -->
            <div class="navbar-left"><a href="{{ route('home') }}">Blog</a></div>

            <!-- Navbar Items -->
            <ul>
                <li><a href="{{ route('home') }}" class="{{ request()->routeIs('home') ? 'active' : '' }}">HOME</a></li>
                <li><a href="{{ route('about') }}" class="{{ request()->routeIs('about') ? 'active' : '' }}">ABOUT
                        ME</a></li>
                <li><a href="{{ route('blog') }}" class="{{ request()->routeIs('blog') ? 'active' : '' }}">SAMPLE
                        POST</a></li>
                <li><a href="{{ route('contact') }}"
                        class="{{ request()->routeIs('contact') ? 'active' : '' }}">CONTACT</a></li>
            </ul>
        </nav>
    </div>
    <main>
        @yield('home-container')
        @yield('about-container')
        @yield('blog-container')
        @yield('contact-container')
    </main>
    <hr>
    <!-- Social Media Links -->
    <div class="social-links">
        <a href="https://twitter.com" target="_blank"><i class="fa-brands fa-square-twitter"></i></a>
        <a href="https://facebook.com" target="_blank"><i class="fa-brands fa-facebook"></i></a>
        <a href="https://github.com" target="_blank"><i class="fa-brands fa-square-github"></i></a>
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 My Personal Website</p>
    </footer>
</body>

</html>