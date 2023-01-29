<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Helper\Helpers;
class AboutController extends Controller
{
    public function index(){
        Helpers::read_json();
        $page_data = Page::where('id',1)->first();
        return view('front.about',compact('page_data'));
    }
}
