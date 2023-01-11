<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Video;

class VideoController extends Controller
{
    public function index(){
        $videos = Video::paginate(4);
        return view('front.video_gallery',compact('videos'));
    }
}
