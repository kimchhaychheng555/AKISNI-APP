<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\UserModel;

class UserController extends Controller
{ 

    public function getUser(){
        return response()->json(UserModel::get(), 200);
    }

    public function findOne(Request $request){
        return response()->json(UserModel::find($request->id), 200);
    }

    public function login(Request $request){
        $res = UserModel::where('username', $request->input('username'))
                        ->where('password', $request->input('password'))
                        ->get();

        if($res->count() > 0){
            return response()->json('', 200);
        }else{
            return response()->json('', 404);
        }
    }

    public function updateUser(Request $request){

        $res = UserModel::find($request->input('id'));
    
        if($res === null){
            return response()->json('', 404);
        }else{
            $res->fullName = $request->input('fullName');
            $res->phoneNumber = $request->input('phoneNumber');
            $res->username = $request->input('username');
            $res->password = $request->input('password');
            $res->profile = $request->input('profile');
            $res->active = $request->input('active');
            $res->lastLatitude = $request->input('lastLatitude');
            $res->lastLongitude = $request->input('lastLongitude');
            $res->save();
            return response()->json($res, 200);
        }

    }

    public function createUser(Request $request){

        $res = UserModel::where('id', $request->input('id'))
                        ->where('username', $request->input('username'))
                        ->get();
    
        if($res->count() > 0){
            $user = new UserModel();
            $user->id = $request->input('id');
            $user->fullName = $request->input('fullName');
            $user->phoneNumber = $request->input('phoneNumber');
            $user->username = $request->input('username');
            $user->password = $request->input('password');
            $user->profile = $request->input('profile');
            $user->active = $request->input('active');
            $user->lastLatitude = $request->input('lastLatitude');
            $user->lastLongitude = $request->input('lastLongitude');
            $user->save();
            return response()->json($user, 201);
        }else{
            return response()->json(array('message'=>'Username duplicate'), 409);
        }

    }
 
}
