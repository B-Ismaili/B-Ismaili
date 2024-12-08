<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Your Secure Portal</title>

    @vite(['resources/css/welcome.css'])
    <!-- Google Fonts and External Libraries -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <div class="login-page">
        <div class="login-container">
            <div class="login-header">
                <h1 class="login-title">Welcome Back</h1>
                <p class="login-subtitle">Your digital security starts here</p>
            </div>
            <form action="{{ route('login') }}" method="POST" class="login-form">
                @csrf
                <div class="input-group">
                    <label for="email" class="input-label">Email Address</label>
                    <input type="email" id="email" name="email" class="input-field" placeholder="Enter your email" required>
                </div>
                <div class="input-group">
                    <label for="password" class="input-label">Password</label>
                    <input type="password" id="password" name="password" class="input-field" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="login-button">Login</button>
            </form>
            {{-- <div class="login-footer">
                <p class="footer-text">Forgot your password? <a href="#" class="footer-link">Reset it here</a></p>
            </div> --}}
        </div>
    </div>
</body>
</html>
