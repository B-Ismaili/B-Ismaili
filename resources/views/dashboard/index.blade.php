@extends('layouts.app')

@section('content')
<div class="dashboard-content">
    <div class="row g-4">
        <!-- Statistics Cards -->
        <div class="col-12">
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Jobs</h5>
                            <p class="card-text">{{ $jobsCount }}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Team Members</h5>
                            <p class="card-text">{{ $teamMembersCount }}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Services</h5>
                            <p class="card-text">{{ $servicesCount }}</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card text-center">
                        <div class="card-body">
                            <h5 class="card-title">Industries</h5>
                            <p class="card-text">{{ $industriesCount }}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Statistics Chart Section -->
        <div class="col-12 mt-4">
            <div class="card">
                <div class="card-header d-flex justify-content-between align-items-center">
                    <h5 class="card-title mb-0">Jobs Statistics</h5>
                    <div class="text-end mt-2">
                        <a href="{{ route('jobs.export') }}" class="btn btn-sm btn-outline-primary">Export as CSV</a>
                    </div>                                      
                </div>
                <div class="card-body">
                    <canvas id="jobsChart"></canvas>
                </div>
            </div>
        </div>

        <!-- Recent Messages Section -->
        <div class="col-12 mt-4">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">
                        Recent Messages 
                        <span class="badge bg-danger">{{ $unreadCount }} Unread</span>
                    </h5>
                </div>
                
                <div class="card-body">
                    @if ($messages->isEmpty())
                        <p class="text-muted">No unread messages to show.</p>
                    @else
                    <ul class="list-group">
                        @foreach ($messages as $message)
                            <li class="list-group-item">
                                <div>
                                    <strong>{{ $message->subject }}</strong>
                                    <p class="text-muted small mb-0">{{ $message->created_at->diffForHumans() }}</p>
                                </div>
                                @if (!$message->is_read)
                                    <form action="{{ route('contact_messages.markAsRead', $message->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('PATCH')
                                        <button type="submit" class="btn btn-sm btn-outline-primary">Mark as Read</button>
                                    </form>
                                @endif
                            </li>
                        @endforeach
                    </ul>
                    <a href="{{ route('contact_messages.index') }}" class="btn btn-outline-primary btn-sm mt-3">View All Messages</a>
                    @endif
                </div>
                <div class="progress mt-3">
                    <div 
                        class="progress-bar" 
                        role="progressbar" 
                        style="width: {{ $progress }}%;" 
                        aria-valuenow="{{ $progress }}" 
                        aria-valuemin="0" 
                        aria-valuemax="100">
                        {{ $progress }}% Read
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>
</div>

<!-- Chart.js Script -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/core"></script>
<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid"></script>

<script>
    const ctx = document.getElementById('jobsChart').getContext('2d');

    const barGradient = ctx.createLinearGradient(0, 0, 0, 400);
    barGradient.addColorStop(0, 'rgba(255, 99, 132, 0.8)');
    barGradient.addColorStop(1, 'rgba(255, 99, 132, 0.2)');

    const lineGradient = ctx.createLinearGradient(0, 0, 400, 0);
    lineGradient.addColorStop(0, 'rgba(54, 162, 235, 1)');
    lineGradient.addColorStop(1, 'rgba(75, 192, 192, 1)');

    const jobsChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
            datasets: [
                {
                    label: 'Jobs Published',
                    data: @json(array_values($jobsStats)),
                    backgroundColor: barGradient,
                    borderRadius: 12,
                    barThickness: 16,
                    borderWidth: 0,
                    hoverBackgroundColor: 'rgba(255, 99, 132, 0.6)',
                },
                {
                    label: 'Trend Line',
                    data: @json(array_values($jobsStats)),
                    type: 'line',
                    backgroundColor: 'transparent',
                    borderColor: lineGradient,
                    borderWidth: 3,
                    pointBackgroundColor: '#36A2EB',
                    pointBorderColor: '#FFFFFF',
                    pointRadius: 6,
                    pointHoverRadius: 8,
                    tension: 0.4,
                },
            ],
        },
        options: {
            responsive: true,
            maintainAspectRatio: false,
            plugins: {
                legend: {
                    display: true,
                    labels: {
                        color: '#FFFFFF',
                        font: {
                            size: 14,
                        },
                    },
                },
                tooltip: {
                    backgroundColor: '#1A1A2E',
                    titleColor: '#FFFFFF',
                    bodyColor: '#FFFFFF',
                    borderColor: 'rgba(255, 255, 255, 0.3)',
                    borderWidth: 1,
                    cornerRadius: 6,
                },
            },
            scales: {
                x: {
                    grid: { display: false },
                    ticks: { color: '#FFFFFF', font: { size: 12 } },
                },
                y: {
                    grid: { color: 'rgba(255, 255, 255, 0.1)', drawBorder: false },
                    ticks: {
                        color: '#FFFFFF',
                        font: { size: 12 },
                        callback: value => `${value} Jobs`,
                    },
                },
            },
            animation: { duration: 2000, easing: 'easeInOutQuart' },
        },
    });

    const calendarEl = document.getElementById('calendar');
    const calendar = new FullCalendar.Calendar(calendarEl, {
        plugins: [FullCalendar.DayGrid],
        initialView: 'dayGridMonth',
        events: '/api/events',
    });
    calendar.render();
</script>
@endsection
