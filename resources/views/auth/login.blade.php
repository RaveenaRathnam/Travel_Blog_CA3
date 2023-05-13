@extends('layouts.app')

@section('content')
<section class="h-auto">
    <div class="container h-full px-6 py-24">
      <div
        class="g-6 flex h-full flex-wrap items-center justify-center lg:justify-between">
        <!-- Left column container with background-->
        <div class="mb-12 md:mb-0 md:w-8/12 lg:w-6/12">
          <img
            src="https://tecdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
            class="w-full"
            alt="Phone image" />
        </div>
  
        <!-- Right column container with form -->
        <div class="md:w-8/12 md:mb-20 lg:ml-6 lg:w-5/12 ">
             
                    <section class="break-words bg-white sm:border-1 sm:rounded-md sm:shadow-sm sm:shadow-lg">
        
                        <header class="font-semibold bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 text-white py-5 px-6 sm:py-6 sm:px-8 sm:rounded-t-md">
                            {{ __('Login') }}
                        </header>
        
                        <form class="w-full px-6 space-y-6 sm:px-10 sm:space-y-8" method="POST" action="{{ route('login') }}">
                            @csrf
        
                            <div class="flex flex-wrap">
                                <label for="email" class="block text-gray-700 text-sm font-bold mb-2 sm:mb-4">
                                    {{ __('E-Mail Address') }}:
                                </label>
        
                                <input id="email" type="email"
                                    class="form-input w-full @error('email') border-red-500 @enderror" name="email"
                                    value="{{ old('email') }}" required autocomplete="email" autofocus>
        
                                @error('email')
                                <p class="text-red-500 text-xs italic mt-4">
                                    {{ $message }}
                                </p>
                                @enderror
                            </div>
        
                            <div class="flex flex-wrap">
                                <label for="password" class="block text-gray-700 text-sm font-bold mb-2 sm:mb-4">
                                    {{ __('Password') }}:
                                </label>
        
                                <input id="password" type="password"
                                    class="form-input w-full @error('password') border-red-500 @enderror" name="password"
                                    required>
        
                                @error('password')
                                <p class="text-red-500 text-xs italic mt-4">
                                    {{ $message }}
                                </p>
                                @enderror
                            </div>
        
                            <div class="flex items-center">
                                <label class="inline-flex items-center text-sm text-gray-700" for="remember">
                                    <input type="checkbox" name="remember" id="remember" class="form-checkbox"
                                        {{ old('remember') ? 'checked' : '' }}>
                                    <span class="ml-2">{{ __('Remember Me') }}</span>
                                </label>
        
                                @if (Route::has('password.request'))
                                <a class="text-sm text-blue-500 hover:text-blue-700 whitespace-no-wrap no-underline hover:underline ml-auto"
                                    href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                                @endif
                            </div>
        
                            <div class="flex flex-wrap">
                                <button type="submit"
                                class="w-full select-none font-bold whitespace-no-wrap p-3 rounded-lg text-base leading-normal no-underline text-gray-100 bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 hover:bg-blue-700 sm:py-4">
                                    {{ __('Login') }}
                                </button>
        
                                @if (Route::has('register'))
                                <p class="w-full text-xs text-center text-gray-700 my-6 sm:text-sm sm:my-8">
                                    {{ __("Don't have an account?") }}
                                    <a class="text-blue-500 hover:text-blue-700 no-underline hover:underline" href="{{ route('register') }}">
                                        {{ __('Register') }}
                                    </a>
                                </p>
                                @endif
                            </div>
                            
                        </form>
        
                    </section>
                
        </div>
      </div>
    </div>
  </section>
@endsection
