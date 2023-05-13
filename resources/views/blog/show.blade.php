@extends('layouts.app')
@if(isset($post))
        <?php $titleTag = htmlspecialchars($post->title); ?>
@endif

@section('title', "| $titleTag")

@section('content')
    <div class="w-4/5 m-auto text-left">
        <div class="py-15">
            <div>
                <img src="{{ asset('images/' . $post->image_path) }}" alt="">
            </div>
            <h1 class="text-6xl">
                {{ $post->title }}
            </h1>
            <p class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light">
                {{ $post->info }}
            </p>

        </div>
    </div>

    <div class="w-4/5 m-auto pt-20">
    <span class="text-gray-500">
        By <span class="font-bold italic text-gray-800">{{ $post->user->name }}</span>, Created on {{ date('jS M Y', strtotime($post->updated_at)) }}
    </span>

        <p class="text-xl text-gray-700 pt-8 pb-10 leading-8 font-light">
            {{ $post->description }}
        </p>

        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                @foreach($post->comments as $comment)
                    <div class="comment">
                        <p><strong>Name:</strong> {{ $comment->name }}</p>
                        <p><strong>Comment:</strong><br/>{{ $comment->comment }}</p><br>
                    </div>
                @endforeach
            </div>
        </div>

        <div class="row">
            <div id="comment-form" class="col-md-8 col-md-offset-2" style="margin-top: 50px;">
                             {{ Form::open(['route' => ['comments.store', $post->id], 'method' => 'POST']) }}

                <div class="row">
                    <div class="col-md-6">
                        {{ Form::label('name', "Name:") }}
                        {{ Form::text('name', null, ['class' => 'form-control']) }}
                    </div>

                    <div class="col-md-6">
                        {{ Form::label('email', 'Email:') }}
                        {{ Form::text('email', null, ['class' => 'form-control']) }}
                    </div>

                    <div class="col-md-12">
                        {{ Form::label('comment', "Comment:") }}
                        {{ Form::textarea('comment', null, ['class' => 'form-control', 'rows' => '5']) }}

                        {{ Form::submit('Add Comment', ['class' => 'btn btn-success btn-block', 'style' => 'margin-top:15px;']) }}
                    </div>
                </div>

                {{ Form::close() }}
            </div>
        </div>


@endsection
