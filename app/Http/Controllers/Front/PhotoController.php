<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\Photo;
use Illuminate\Http\Request;
use App\Helper\Helpers;
class PhotoController extends Controller
{
    public function index(){
        Helpers::read_json();
        $photos = Photo::paginate(4);
        return view('front.photo_gallery',compact('photos'));
    }
}
