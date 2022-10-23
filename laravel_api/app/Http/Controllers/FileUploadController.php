<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class FileUploadController extends Controller
{
    function upload(Request $request){

        $result = $request->file('file')->store('public');

        return ["result"=> $result];
    }
}
