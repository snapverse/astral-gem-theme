<?php
 
 namespace App\Http\Controllers;
 
 use App\Task;
 use App\Http\Requests;
 use Illuminate\Http\Request;
 use App\Http\Controllers\Controller;
 use App\Repositories\TaskRepository;
 
class TaskRepository
{
    /**
     * Display a list of all of the user's task.
     *
     * @param  Request  $request
     * @return Response
     */
    public function index(Request $request)
    {
        $tasks = Task::where('user_id', $request->user()->id)->get();
    
        return view('tasks.index', [
            'tasks' => $tasks,
        ]);
    }

    /**
     * Get all of the tasks for a given user.
     *
     * @param  User  $user
     * @return Collection
     */
    public function forUser(User $user)
    {
        return Task::where('user_id', $user->id)
          ->orderBy('created_at', 'asc')
          ->get();
    }
}