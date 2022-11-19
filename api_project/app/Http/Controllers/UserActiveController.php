<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\UserActiveModel;

class UserActiveController extends Controller
{
    public function get(){
        return response()->json(UserActiveModel::get(), 200);
    }

    public function findOne(Request $request){
        return response()->json(UserActiveModel::find($request->id), 200);
    } 

    public function update(Request $request){
        $res = UserActiveModel::where('user_id', $request->input('user_id'))
                        ->get();
 
    
        if($res->count() == 0){
            return response()->json($res, 404);
        }else{
            $userActive = $res->first();
            $userActive->user_id = $request->input('user_id');
            $userActive->fullName = $request->input('fullName');
            $userActive->phoneNumber = $request->input('phoneNumber');
            $userActive->username = $request->input('username');
            $userActive->password = $request->input('password');
            $userActive->role = $request->input('role');
            $userActive->profile = $request->input('profile');
            $userActive->active = $request->input('active');
            $userActive->lastLatitude = $request->input('lastLatitude');
            $userActive->lastLongitude = $request->input('lastLongitude');
            $userActive->save();
            return response()->json($userActive, 200);
        }

    }

    public function create(Request $request){

        $res = UserActiveModel::where('id', $request->input('id'))
                        ->get();
    
        if($res->count() == 0){
            $userActive = new UserActiveModel();
            $userActive->id = $request->input('id');
            $userActive->user_id = $request->input('user_id');
            $userActive->fullName = $request->input('fullName');
            $userActive->phoneNumber = $request->input('phoneNumber');
            $userActive->username = $request->input('username');
            $userActive->password = $request->input('password');
            $userActive->role = $request->input('role');
            $userActive->profile = $request->input('profile');
            $userActive->active = $request->input('active');
            $userActive->lastLatitude = $request->input('lastLatitude');
            $userActive->lastLongitude = $request->input('lastLongitude');
            $userActive->save();
            return response()->json($user, 201);
        }else{
            return response()->json(array('message'=>'Duplicate'), 409);
        }

    }

    
    public function delete(Request $request){

        $res = UserActiveModel::where('user_id', $request->id)
                                    ->get(); 

        if($res->count() > 0){
            $data = $res->first();
            $data->delete();
            return response()->json($data, 200);
        }else{
            return response()->json(array('message'=>'Not Found'), 404);
        }
    }
}
