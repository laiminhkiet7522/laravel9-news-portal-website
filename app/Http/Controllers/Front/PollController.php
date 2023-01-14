<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\OnlinePoll;
class PollController extends Controller
{
    public function submit(Request $request){
        $poll_data = OnlinePoll::where('id',$request->id)->first();
        if($request->vote == 'Yes'){
            $updated_yes = $poll_data->yes_vote + 1;
            $poll_data->yes_vote = $updated_yes;
        }else{
            $updated_no = $poll_data->no_vote + 1;
            $poll_data->no_vote = $updated_no;
        }
        $poll_data->update();
        session()->put('current_poll_id',$poll_data->id);
        return redirect()->back()->with('success','Your vote is counted successfully!');
    }

    public function previous(){
        $online_poll_data = OnlinePoll::orderBy('id','desc')->get();
        return view('front.poll_previous', compact('online_poll_data'));
    }
}
