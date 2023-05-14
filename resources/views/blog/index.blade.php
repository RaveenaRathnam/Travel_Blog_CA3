@extends('layouts.app')

@section('content')

    <div class="w-4/5  m-auto text-center">
        <div class="py-15 border-b border-gray-200">
            <h1 class=" text-6xl">
                Blog Posts
            </h1>
        </div>
    </div>

    <div class="searchbar">
        <form action="">
            <input type="text" placeholder="Search..." name="search" />

            <button type="submit">
                <i class="fa fa-search"></i>
            </button>

        </form>
    </div>

    @if (session()->has('message'))
        <div class="w-4/5 m-auto mt-10 pl-2">
            <p class="w-2/6 mb-4 text-gray-50 bg-green-500 rounded-2xl py-4">
                {{ session()->get('message') }}
            </p>
        </div>
    @endif

    @if (Auth::check())
        <div class="pt-15 w-4/5 m-auto">
            <a
                href="/blog/create"
                class="bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 uppercase bg-transparent text-gray-100 text-xs font-extrabold py-3 px-5 rounded-3xl">
                Create post
            </a>
        </div>
    @endif
    @php
        $colors = ['bg-pink-100', 'bg-indigo-100', 'bg-purple-200']; // Define an array of colors
        $prevColor = null; // Initialize variable to store previously selected color
    @endphp

    @foreach ($posts as $post)
        @php
            do {
                $randomColor = $colors[array_rand($colors)]; // Randomly select a color from the array
            } while ($randomColor === $prevColor); // Repeat if the color is the same as the previous one

            $prevColor = $randomColor; // Store the current color as the previous color for the next iteration
        @endphp
        <div class="rounded-md mt-8 {{ $randomColor }} sm:grid  grid-cols-2 gap-20 w-4/5 mx-auto py-15 border-b border-gray-200">
            <div>
                <figure style="width:400px" class="md:ml-12">
                    <img src="{{ asset('images/' . $post->image_path) }}" alt="">
                    <figcaption class="ml-12">{{ $post->title }}</figcaption>
                </figure>
            </div>
            <div class="md: mt-16">
                <h2 class="text-gray-700 font-bold text-5xl pb-4">
                    {{ $post->title }}
                </h2>

                <span class="text-gray-500">
                By <span class="font-bold italic text-gray-800">{{ $post->user->name }}</span>, Created on {{ date('jS M Y', strtotime($post->updated_at)) }}
            </span>

                <p class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light">
                    {{ $post->description }}
                </p>

                <a href="/blog/{{ $post->slug }}" class="uppercase bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 text-gray-100 text-lg font-extrabold py-4 px-8 rounded-3xl">
                    Keep Reading
                </a>
                {{--            <form action="{{ route('like.post') }}" method="POST">--}}
                {{--                @csrf--}}
                {{--                <input type="hidden" name="post_id" value="{{ $post->id }}">--}}
                {{--                <button type="submit">Like</button>--}}
                {{--            </form>--}}
                {{--            <a href="{{ route('comment.post', ['id' => $post->id]) }}">Comment</a>--}}

                @if (isset(Auth::user()->id) && Auth::user()->id == $post->user_id)
                    <span class="float-right">
                    <a
                        href="/blog/{{ $post->slug }}/edit"
                        class="inline-block rounded-full bg-green-400 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#14a44d] transition duration-150 ease-in-out hover:bg-success-600 hover:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] focus:bg-success-600 focus:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] focus:outline-none focus:ring-0 active:bg-success-700 active:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.3),0_4px_18px_0_rgba(20,164,77,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(20,164,77,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(20,164,77,0.2),0_4px_18px_0_rgba(20,164,77,0.1)]">
                        Edit
                    </a>

                </span>

                    <span class="float-right">
                     <form
                         action="/blog/{{ $post->slug }}"
                         method="POST">
                        @csrf
                         @method('delete')


                        <button
                            type="submit"
                            class="inline-block rounded-full bg-red-500 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-[0_4px_9px_-4px_#dc4c64] transition duration-150 ease-in-out hover:bg-danger-600 hover:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] focus:bg-danger-600 focus:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] focus:outline-none focus:ring-0 active:bg-danger-700 active:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.3),0_4px_18px_0_rgba(220,76,100,0.2)] dark:shadow-[0_4px_9px_-4px_rgba(220,76,100,0.5)] dark:hover:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)] dark:focus:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)] dark:active:shadow-[0_8px_9px_-4px_rgba(220,76,100,0.2),0_4px_18px_0_rgba(220,76,100,0.1)]">
                         Delete
                        </button>

                    </form>
                </span>
                @endif
            </div>
        </div>
    @endforeach

@endsection
