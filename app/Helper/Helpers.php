<?php

namespace App\Helper;

use App\Http\Controllers\Controller;
use App\Models\Language;
use Spatie\Backtrace\File;

class Helpers
{
    public static function read_json()
    {
        $default_lang_data = Language::where('is_default','Yes')->first();
        if (!session()->get('session_short_name')) {
            $current_short_name = $default_lang_data->short_name;
        } else {
            $current_short_name = session()->get('session_short_name');
        }
        $json_data = json_decode(file_get_contents(resource_path('languages/' . $current_short_name . '.json')));
        foreach ($json_data as $key => $value) {
            define($key, $value);
        }
    }
}
