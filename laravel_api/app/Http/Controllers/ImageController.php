<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ImageController extends Controller
{
    function upload(Request $request){

        $result = $request->file('file')->store('public/images');

        return ["result"=> $result];
    }
}
