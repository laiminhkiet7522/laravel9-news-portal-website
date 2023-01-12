<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
class AdminPageController extends Controller
{
    public function about(){
        $page_data = Page::where('id',1)->first();
        return view('admin.page_about',compact('page_data'));
    }
    public function about_update(Request $request){
        $request->validate([
            'about_title'=>'required',
            'about_detail'=>'required'
        ]);
        $page = Page::where('id',1)->first();
        $page->about_title = $request->about_title;
        $page->about_detail = $request->about_detail;
        $page->about_status = $request->about_status;
        $page->update();
        return redirect()->route('admin_page_about')->with('success','Data is updated successfully!');
    }

    public function faq(){
        $page_data = Page::where('id',1)->first();
        return view('admin.page_faq',compact('page_data'));
    }
    public function faq_update(Request $request){
        $request->validate([
            'faq_title'=>'required'
        ]);
        $page = Page::where('id',1)->first();
        $page->faq_title = $request->faq_title;
        $page->faq_detail = $request->faq_detail;
        $page->faq_status = $request->faq_status;
        $page->update();
        return redirect()->route('admin_page_faq')->with('success','Data is updated successfully!');
    }
}
