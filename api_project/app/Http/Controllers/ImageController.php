<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function uploadFile(Request $request) {
        //Move Uploaded File to public folder 
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]); 
        $myimage = $request->filename; 
        $result = $request->image->move("images", $myimage);
        return $myimage;
     }
}
