<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Information</title>
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>
    <header>
        <h1>BUSINESS CASUAL</h1>
        <div class="navbar">
            <div class="nav-links">
                <a href="{{ route('home') }}">Home</a>
                <form action="{{ route('clear') }}" method="POST" style="display: inline;">
                    @csrf
                    <button type="submit" class="btn">Clear Data</button>
                </form>
                @if(session()->has('name'))
                <form action="{{ route('logout') }}" method="POST" style="display: inline;">
                    @csrf
                    <button type="submit" class="logout-btn">
                        Logout
                    </button>
                </form>
                @else
                <a href="{{ route('form') }}" class="{{ request()->routeIs('form') ? 'active' : '' }}">Login</a>
                @endif
            </div>
        </div>
    </header>

    <main>
        <div class="container">
            <p>Your name is: <br> {{ session('name') ?? 'N/A' }}</p>
            <p>Your lastname is: <br> {{ session('surname') ?? 'N/A' }}</p>

            @if(session('email'))
            <p>Email: <br> {{ session('email') }}</p>
            @endif
        </div>
    </main>
    <footer>
        <p>&copy; Your Website 2024</p>
    </footer>
</body>

</html>