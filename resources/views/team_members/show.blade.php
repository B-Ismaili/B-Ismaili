{{-- resources/views/team_members/show.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Team Member Details</h1>
    <div class="card">
        <div class="card-body">
            <img src="{{ $teamMember->picture }}" alt="{{ $teamMember->name }}" width="150" class="mb-3">
            <h5 class="card-title">{{ $teamMember->name }} {{ $teamMember->surname }}</h5>
            <p class="card-text"><strong>Position:</strong> {{ $teamMember->position->name }}</p>
            <p class="card-text"><strong>Short Profile:</strong> {{ $teamMember->short_profile }}</p>
            <a href="{{ route('team_members.index') }}" class="btn btn-primary">Back to Team Members</a>
        </div>
    </div>
</div>
@endsection
