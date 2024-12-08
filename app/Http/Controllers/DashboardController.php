<?php

namespace App\Http\Controllers;

use App\Models\Job;
use App\Models\ContactMessage;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        // Jobs statistics for the past year
        $jobsByMonth = Job::selectRaw('MONTH(created_at) as month, COUNT(*) as count')
            ->whereYear('created_at', now()->year)
            ->groupBy('month')
            ->pluck('count', 'month')
            ->toArray();

        // Ensure all months are represented
        $jobsStats = array_fill(1, 12, 0);
        foreach ($jobsByMonth as $month => $count) {
            $jobsStats[$month] = $count;
        }

        // Count for dashboard cards
        $jobsCount = Job::count();
        $teamMembersCount = \App\Models\TeamMember::count();
        $servicesCount = \App\Models\Service::count();
        $industriesCount = \App\Models\Industry::count();

        // Fetch unread messages
        $unreadMessages = ContactMessage::where('is_read', false)
            ->orderBy('created_at', 'desc')
            ->take(5)
            ->get();

        // Count unread and total messages
        $unreadCount = ContactMessage::where('is_read', false)->count();
        $totalMessages = ContactMessage::count();

        // Calculate progress (percentage of read messages)
        $progress = $totalMessages > 0
            ? round(($totalMessages - $unreadCount) / $totalMessages * 100, 2)
            : 0;

        // Fallback to latest read messages if no unread messages
        $messages = $unreadMessages->isEmpty()
            ? ContactMessage::where('is_read', true)
            ->orderBy('created_at', 'desc')
            ->take(5)
            ->get()
            : $unreadMessages;

        // Pass all required data to the view
        return view('dashboard.index', compact(
            'jobsStats',
            'jobsCount',
            'teamMembersCount',
            'servicesCount',
            'industriesCount',
            'messages',
            'unreadCount',
            'progress' // Pass progress to the view
        ));
    }
}