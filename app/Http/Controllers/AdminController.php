<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use App\Models\Point;
use App\Models\Status;


function find_name($data) {
    $params_list = Point::select('event_name')->get();
    $isContainName = false;
    $params = [];

    foreach ($params_list as $param) {
        $isContainName = Str::contains($param['event_name'], $data);
        if($isContainName){
            array_push($params, $param['event_name']);
        }
    }

    return $params;
}

class AdminController extends Controller
{


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $elementCount = 10;
        $statuses = Status::all();

        if (($request->has('name') and $request->input('name') != '') and
            ($request->has('status') and $request->input('status') > 0)) 
        {
            $data = find_name($request->input('name'));

            $coords = Point::whereIn('event_name', $data)->
            where('status_id', $request->input('status'))->
            latest()->
            paginate($elementCount);
        }
        elseif ($request->has('name') and $request->input('name') != '') 
        {
            $data = find_name($request->input('name'));

            $coords = Point::whereIn('event_name', $data)->
            latest()->
            paginate($elementCount);
        }
        elseif ($request->has('status') and $request->input('status') > 0)
        {
            $coords = Point::where('status_id', $request->input('status'))->
            latest()->
            paginate($elementCount);
        }
        else 
        {
            $coords = Point::latest()->paginate($elementCount);
        }

        return view('admin', [
            'coords' => $coords,
            'statuses'=>$statuses
        ]);
    }

    public function changeStatus($id) 
    {
        $currentPoint = Point::where('id', $id)->
                               get();
        foreach ($currentPoint as $statusChanger) {
            if ($statusChanger->status_id == 1) {
                $statusChanger->status_id = 2;
            }
            else {
                $statusChanger->status_id = 1;
            }
            $statusChanger->save();
        }

        return redirect('/admin');
    }

    public function delete($id) 
    {
        $currentPoint = Point::where('id', $id)->
                               get();
        foreach ($currentPoint as $deletedRow) {
            $deletedRow->delete();
        }

        return redirect('/admin');
    }

    public function edit($id, Request $request) 
    {
        $point = Point::whereId($id)->first();

        if ($request->has('name') and
            $request->has('desc') and
            $request->has('x') and
            $request->has('y')
        ) {
            $validatedData = $request->validate([
                'name' => ['required', 'max:50'],
                'desc' => ['required', 'max:200'],
                'x' => ['required', 'numeric', 'between:0, 1100'],
                'y' => ['required', 'numeric', 'between:0, 850'],
            ]);

            $point->event_name = $request->input('name');
            $point->event_desc = $request->input('desc');
            $point->event_x = $request->input('x');
            $point->event_y = $request->input('y');
            if ($request->has('img-event')) {
                unlink(public_path($point->event_image));
                $image = $request->file('img-event');
                $path = $image->store('events_img', 'public');
                $point->event_image = 'storage/'.$path;
            }

            $point->save();

            return redirect('/admin');
        }

        return view('point', 
            [
                'title' => 'Info about point '.$point->event_name,
                'point'  => $point,
            ]);
    }
}
