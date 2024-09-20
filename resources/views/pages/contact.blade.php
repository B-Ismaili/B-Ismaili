@extends('layouts.layout')

@section('title', 'Contact')

@section('background-image', asset('images/contact-bg.jpg'))

@section('content')
<h1>Contact Me</h1>
<p>Have questions? I have answers!</p>
@endsection

@section('contact-container')
<div class="contact-container1">
    <div class="contact">
        <form class="contact-form" action="#" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name">

            <label for="email">Email Address</label>
            <input type="email" id="email" name="email">

            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone">

            <label for="message">Message</label>
            <textarea id="message" name="message"></textarea>

            <button type="submit">Send</button>
        </form>
    </div>
</div>

@endsection