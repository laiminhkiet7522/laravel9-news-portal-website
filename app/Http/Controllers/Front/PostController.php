<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\Author;
use App\Models\Post;
use App\Models\Tag;
use App\Helper\Helpers;
class PostController extends Controller
{
    public function detail($id){
        Helpers::read_json();
        $post_detail = Post::with('rSubCategory')->where('id',$id)->first();
        $tag_data = Tag::where('post_id',$id)->get();
        if($post_detail->author_id == 0){
            $user_data = Admin::where('id',$post_detail->admin_id)->first();
        }else{
            $user_data = Author::where('id',$post_detail->author_id)->first();
        }
        $new_value = $post_detail->visitors + 1;
        $post_detail->visitors = $new_value;
        $post_detail->update();

        $related_post_array =  Post::with('rSubCategory')->orderBy('id','desc')->where('sub_category_id',$post_detail->sub_category_id)->get();
        return view('front.post_detail', compact('post_detail','user_data','tag_data','related_post_array'));
    }
}
