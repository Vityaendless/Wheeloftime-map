<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
//use Illuminate\Support\Facades\Storage;
use App\Models\Point;

class MapController extends Controller
{
    public function show(Request $request)
    {
        $coords = Point::where('status_id', 2)->get();

        if (($request->has('name-event') and $request->input('name-event') != '') and
            $request->has('img-event') and 
            ($request->has('textarea') and $request->input('name-event') != '')) 
        {
            $point = new Point;
    
            $point->event_name = $request->input('name-event');
            $image = $request->file('img-event');
            $path = $image->store('events_img', 'public');
            $point->event_image = 'storage/'.$path;
            $point->event_desc = $request->input('textarea');
            $point->event_x  = $request->input('xclick');
            $point->event_y = $request->input('yclick');
            $point->status_id = 1;
    
            $point->save();

            header('Location: /');
            exit();
        }

        return view('index', [
            'title' => 'Wheel of time online map',
            'coords' => $coords
        ]);
    }
}
