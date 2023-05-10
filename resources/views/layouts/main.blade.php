<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog</title>
    <link rel="stylesheet" href="{{ asset('assets/vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/font-awesome/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/vendors/aos/aos.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css') }}">
    <script src="{{ asset('assets/vendors/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/js/loader.js') }}"></script>
</head>
<body>
<div class="edica-loader"></div>
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="navbar-collapse">
        <ul class="navbar-nav mx-auto mt-2 mt-lg-0">
            <div>
                <li class="nav-item">
                    <h6>
                        <a class="nav-link" href="{{ route('home') }}">На главную</a>
                    </h6>
                </li>
            </div>
            @guest()
                <div>
                    <li class="nav-item">
                        <h6>
                            <a class="nav-link" href="{{ route('profile.main.index') }}">Войти</a>
                        </h6>
                    </li>
                </div>
            @endguest
            @auth()
                <div>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('profile.main.index') }}">Личный кабинет</a>
                    </li>
                </div>
            @endauth
        </ul>
    </div>
</nav>

@yield('content')

<footer class="edica-footer mt-3" data-aos="fade-up">
    <div class="container">
        <div class="row footer-widget-area">
            <div class="col-md-3">
                <a href="index.html" class="footer-brand-wrapper">
                    <img src="{{ '' }}assets/images/logo.svg" alt="edica logo">
                </a>
                <p class="contact-details">Some random blog</p>
                <a href="https://github.com/martyn12/blog" class="contact-details">GitHub page</a>
                <p class="contact-details">88005553535</p>
            </div>
        </div>
    </div>
</footer>
<script src="{{ asset('assets/vendors/popper.js/popper.min.js') }}"></script>
<script src="{{ asset('assets/vendors/bootstrap/dist/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/vendors/aos/aos.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>
<script>
    AOS.init({
        duration: 1000
    });
</script>
</body>

</html>
