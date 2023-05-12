<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

<title>{{ config('app.name', 'Odysseyx') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    
    <!-- Styles -->
    <link href="{{ mix('css/app.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<body class="bg-gray-100 h-screen antialiased leading-none font-sans">
    <div id="app">
        <header class="bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500  py-6">
            <div class="container mx-auto flex justify-between items-center px-6">
                <div>
                    <img src="/images/logo.png" class="absolute left-0 top-0 h-16 w-16 "alt="">
                    <a href="{{ url('/') }}" class=" ml-12 text-xl font-normal text-white  no-underline hover:font-bold " >
                        {{ config('app.name', 'Odysseyx') }}
                    </a>
                </div>
                <nav class="space-x-4 text-white text-sm sm:text-base ">
                    <a class="no-underline  font-normal hover:font-bold " href="/">Home</a>
                    <a class="no-underline  font-normal hover:font-bold " href="/blog">Blog</a>
                    <a class="no-underline  font-normal hover:font-bold " href="/about">About</a>
                    <a class="no-underline  font-normal hover:font-bold " href="/contact_us">Contact Us</a>
                    @guest
                        <a class="no-underline  font-normal hover:font-bold " href="{{ route('login') }}">{{ __('Login') }}</a>
                        @if (Route::has('register'))
                            <a class="no-underline font-normal hover:font-bold " href="{{ route('register') }}">{{ __('Register') }}</a>
                        @endif
                    @else
                        <span>{{ Auth::user()->name }}</span>

                        <a href="{{ route('logout') }}"
                           class="no-underline hover:underline"
                           onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">{{ __('Logout') }}</a>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="hidden">
                            {{ csrf_field() }}
                        </form>
                    @endguest
                </nav>
            </div>
        </header>

        <div>
            @yield('content')
        </div>

        <div>
            @include('layouts.footer')
        </div>
    </div>
</body>
</html>
