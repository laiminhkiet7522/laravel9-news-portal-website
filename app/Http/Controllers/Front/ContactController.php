<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Admin;
use Illuminate\Support\Facades\Validator;
use App\Mail\Websitemail;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    public function index()
    {
        $page_data = Page::where('id', 1)->first();
        return view('front.contact', compact('page_data'));
    }
    public function send_email(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'message' => 'required'
        ]);
        if (!$validator->passes()) {
            return response()->json(['code' => 0, 'error_message' => $validator->errors()->toArray()]);
        } else {
            //Send email
            $admin_data = Admin::where('id',1)->first();
            $subject = 'Contact Form Email';
            $message = 'Visitor Message Detail:<br>';
            $message .= '<b>Visitor Name: </b>'.$request->name.'<br>';
            $message .= '<b>Visitor Email: </b>'.$request->email.'<br>';
            $message .= '<b>Visitor Message: </b>'.$request->message.'<br>';
            Mail::to($admin_data->email)->send(new Websitemail($subject, $message));
            return response()->json(['code' => 1, 'success_message' => 'Email is sent!']);
        }
    }
}
