<?php

namespace App\Http\Controllers;

use App\Models\Job;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Response;
use Symfony\Component\HttpFoundation\StreamedResponse; // Correct namespace

class JobController extends Controller
{
    public function index(Request $request)
    {
        $query = Job::query();

        // Filter by month and year if provided
        if ($request->has('month')) {
            $date = Carbon::parse($request->month . '-01');
            $query->whereMonth('created_at', $date->month)
                ->whereYear('created_at', $date->year);
        }

        $jobs = $query->paginate(10);

        return view('jobs.index', compact('jobs'));
    }

    public function create()
    {
        return view('jobs.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string',
            'description' => 'required',
            'type' => 'required',
            'work_mode' => 'required',
            'location' => 'required|string',
        ]);

        Job::create($request->all());
        return redirect()->route('jobs.index')->with('success', 'Job created successfully.');
    }

    public function edit(Job $job)
    {
        return view('jobs.edit', compact('job'));
    }

    public function update(Request $request, Job $job)
    {
        $request->validate([
            'title' => 'required|string',
            'description' => 'required',
            'type' => 'required',
            'work_mode' => 'required',
            'location' => 'required|string',
        ]);

        $job->update($request->all());
        return redirect()->route('jobs.index')->with('success', 'Job updated successfully.');
    }

    public function destroy(Job $job)
    {
        $job->delete();
        return redirect()->route('jobs.index')->with('success', 'Job deleted successfully.');
    }

    public function export()
    {

        $jobsByMonth = Job::selectRaw('MONTH(created_at) as month, COUNT(*) as count')
            ->groupBy('month')
            ->orderBy('month')
            ->get();

        $response = new StreamedResponse(function () use ($jobsByMonth) {
            $handle = fopen('php://output', 'w');
            fputcsv($handle, ['Month', 'Jobs Published']); // CSV Header

            foreach ($jobsByMonth as $job) {
                $monthName = date("F", mktime(0, 0, 0, $job->month, 10)); // Convert month number to name
                fputcsv($handle, [$monthName, $job->count]);
            }

            fclose($handle);
        });

        $response->headers->set('Content-Type', 'text/csv');
        $response->headers->set('Content-Disposition', 'attachment; filename="jobs_statistics.csv"');

        return $response;
    }

    public function show(Job $job)
    {
        return view('jobs.show', compact('job'));
    }
}