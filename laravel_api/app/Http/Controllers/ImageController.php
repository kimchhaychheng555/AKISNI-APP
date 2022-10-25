<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    function upload(Request $request){
        
        $validatedData = $request->validate([
            'image' => 'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048',
    
           ]);
    
        $name = $request->file('image')->getClientOriginalName();

        $path = $request->file('image')->store('public/images');

        return  ["result"=> ('upload-image')->with('status', 'Image Has been uploaded')];
    } 
}
