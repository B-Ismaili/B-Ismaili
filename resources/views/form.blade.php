<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Coffee Shop</title>
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>

    <header>
        <h1>BUSINESS CASUAL</h1>
        <div class="navbar">
            <div class="nav-links">
                <a href="{{ route('home') }}" class="{{ request()->routeIs('home') ? 'active' : '' }}">Home</a>
                <a href="{{ route('form') }}" class="{{ request()->routeIs('form') ? 'active' : '' }}">Login</a>

            </div>
        </div>
    </header>

    <main>
        <form action="{{ route('form.submit') }}" method="POST">
            @csrf
            <div>
                @error('name')
                <div class="error" style="color: red">{{ $message }}</div>
                @enderror
                <label for="name">Name:</label><br>
                <input type="text" id="name" name="name" value="{{ old('name') }}">
            </div>

            <div>
                @error('surname')
                <div class="error" style="color: red">{{ $message }}</div>
                @enderror
                <label for="surname">Surname:</label> <br>
                <input type="text" id="surname" name="surname" value="{{ old('surname') }}">
            </div>

            <div>
                @error('email')
                <div class="error" style="color: red">{{ $message }}</div>
                @enderror
                <label for="email">Email (optional):</label><br>
                <input type="email" id="email" name="email" value="{{ old('email') }}">
            </div>
            <button type="submit" class="btn">Submit</button>
        </form>
    </main>

    <footer>
        <p>&copy; Your Website 2024</p>
    </footer>
</body>

</html>