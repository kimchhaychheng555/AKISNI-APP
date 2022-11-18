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

        $res = UserActiveModel::find($request->input('id'));
    
        if($res === null){
            return response()->json('', 404);
        }else{
            $res->user_id = $request->input('user_id');
            $res->fullName = $request->input('fullName');
            $res->phoneNumber = $request->input('phoneNumber');
            $res->username = $request->input('username');
            $res->password = $request->input('password');
            $res->role = $request->input('role');
            $res->profile = $request->input('profile');
            $res->active = $request->input('active');
            $res->lastLatitude = $request->input('lastLatitude');
            $res->lastLongitude = $request->input('lastLongitude');
            $res->save();
            return response()->json($res, 200);
        }

    }

    public function create(Request $request){

        $userActive = UserActiveModel::where('user_id', $request->input('user_id'))
                        ->get();
    
        if($userActive->count() == 0){
            $userActive = new UserActiveModel();
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
            return response()->json($userActive, 201);
        }else{
            return response()->json(array('message'=>'Duplicate'), 409);
        }

    }

    
    public function delete(Request $request){

        $res = UserActiveModel::where('user_id', $request->id)
                                    ->get();

 
        if($res->count() > 0){
            $data = UserActiveModel::find($res[0]->id);
            $data->delete();
            return response()->json($data, 200);
        }else{
            return response()->json(array('message'=>'Not Found'), 404);
        }
    }
}
