{{-- resources/views/jobs/show.blade.php --}}
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Job Details</h1>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">{{ $job->title }}</h5>
            <p class="card-text"><strong>Description:</strong> {{ $job->description }}</p>
            <p class="card-text"><strong>Type:</strong> {{ $job->type }}</p>
            <p class="card-text"><strong>Work Mode:</strong> {{ $job->work_mode }}</p>
            <p class="card-text"><strong>Location:</strong> {{ $job->location }}</p>
            <a href="{{ route('jobs.index') }}" class="btn btn-primary">Back to Jobs</a>
        </div>
    </div>
</div>
@endsection
