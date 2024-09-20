@extends('layouts.layout')

@section('title', 'Home')

@section('background-image', asset('images/home-bg.jpg'))

@section('content')
<h1>Clean Blog</h1>
<p>A Blog Theme By Start Bootstrap</p>
@endsection

@section('home-container')
<div class="home-container1">
    <div class="post">
        <h2 class="post-title">Lorem Ipsum</h2>
        <p class="post-excerpt">Cillum laborum tempor laborum non dolore duis ipsum fugiat consectetur reprehenderit
            ipsum ipsum ex.</p>
        <p class="post-meta">Posted by <a href="#">John Doe</a></p>
    </div>

    <div class="post">
        <h2 class="post-title">Lorem Ipsum 2</h2>
        <p class="post-excerpt">Cillum laborum tempor laborum non dolore duis ipsum fugiat consectetur reprehenderit
            ipsum ipsum ex.</p>
        <p class="post-meta">Posted by <a href="#">John Doe</a> in another boring news</p>
    </div>

    <div class="post">
        <h2 class="post-title">Lorem Ipsum 3</h2>
        <p class="post-excerpt">Veniam amet ad laborum exceptur ullamco consequat in adipisicing Lorem cillum excepteur.
            Commodo labore non sit ullamco minim dolore velit irure incididunt quis exercitation anim dolore non.</p>
        <p class="post-meta">Posted by <a href="#">Jane Doe</a></p>
    </div>

    <div class="post">
        <h2 class="post-title">Lorem Ipsum 4</h2>
        <p class="post-excerpt">Mollit aute dolore proident consectetur exercitation ex.</p>
        <p class="post-meta">Posted by <a href="#">Missy Doe</a></p>
    </div>
    <div class="older-posts">
        <a href="#" class="btn-older-posts">Older posts -></a>
    </div>
</div>
@endSection