<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Faq;
use App\Helper\Helpers;
class FaqController extends Controller
{
    public function index(){
        Helpers::read_json();
        $page_data = Page::where('id',1)->first();
        $faq_data = Faq::get();
        return view('front.faq',compact('page_data','faq_data'));
    }
}
