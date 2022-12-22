<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Front\HomeController;
use Illuminate\Http\Request;
use App\Models\HomeAdvertisement;
class AdminAdvertisementController extends Controller
{
    public function home_ad_show(){
        $home_ad_data = HomeAdvertisement::where('id',1)->first();
        return view('admin.advertisement_home_view',compact('home_ad_data'));
    }
}
