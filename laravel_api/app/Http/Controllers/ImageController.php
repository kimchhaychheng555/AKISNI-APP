<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str; 


class ImageController extends Controller
{
    public function upload(Request $request)
    {         

        $imageName = Str::uuid()->toString().'.'.$request->file('file')->extension();  
        $result = $request->file('file')->storeAs('uploads', $imageName);


        return ["result"=>$result];
        // $request->validate([
        //     'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        // ]);

    
        // // $result = $request->file('file')->move(public_path('images'), $imageName);

        
        // // return ["result"=>$result];

        // $imageName = Str::uuid()->toString().'.'.$request->image->extension();  
        // $result = $request->file('file')->store('uploads');
        // return ["result"=>$result];
    }

}
