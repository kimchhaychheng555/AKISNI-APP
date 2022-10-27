<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    public function uploadFile(Request $request) {
        //Move Uploaded File to public folder
        $destinationPath = 'images';
        $myimage = $request->image->getClientOriginalName();
        $result = $request->image->move(public_path($destinationPath), $myimage);

        return $result;
     }
}
