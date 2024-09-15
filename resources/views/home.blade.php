<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Coffee Shop</title>
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>

    <header>
        <h1>BUSINESS CASUAL</h1>
        <div class="navbar">
            <div class="nav-links">
                <a href="{{ route('home') }}" class="{{ request()->routeIs('home') ? 'active' : '' }}">Home</a>
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
        <section>
            <img src="{{ asset('images/caffee-shop.jpg') }}" alt="Coffee Shop" class="bio-image">
            <div class="short-bio">
                <h3>LOREM IPSUM</h3>
                <h1>LOREM IPSUM</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum
                    vestibulum. Cras vehicula, mi sit amet luctus cursus, velit justo vestibulum quam, ac interdum purus
                    nisi ut elit.</p>
            </div>
        </section>

        <section class="our-promise">
            <div class="our-promise-text">
                <p>OUR PROMISE TO</p>
                <h1>{{ session()->has('name') ? session('name') : 'YOU' }}</h1>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At neque id quos quia vel sapiente
                    accusantium ex? Sequi rem eos veniam, est cum inventore at ut molestias ex aut suscipit! Lorem
                    ipsum, dolor sit amet consectetur adipisicing elit. Cupiditate molestiae deserunt nisi quis
                    consequuntur iusto adipisci incidunt. Quas, eligendi ratione!</p>
            </div>
        </section>
    </main>

    <footer>
        <p>&copy; Your Website 2024</p>
    </footer>

</body>

</html>