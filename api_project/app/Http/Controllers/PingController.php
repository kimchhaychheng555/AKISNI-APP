<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\UserModel;

class PingController extends Controller
{ 

   public function ping(){
        return ["result"=>"OK"];
   }
 
}
