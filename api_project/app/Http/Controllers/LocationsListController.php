<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\LocationsListModel;

class LocationsListController extends Controller
{
    public function get(){
        return response()->json(LocationsListModel::get(), 200);
    }

    public function findOne(Request $request){
        return response()->json(LocationsListModel::find($request->id), 200);
    }

    public function update(Request $request){

        $res = LocationsListModel::find($request->input('id'));
    
        if($res === null){
            return response()->json('', 404);
        }else{
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

        $res = LocationsListModel::where('id', $request->input('id'))
                        ->get();
    
        if($res->count() > 0){
            $location = new LocationsListModel();
            $location->id = $request->input('id');
            $location->fullName = $request->input('fullName');
            $location->phoneNumber = $request->input('phoneNumber');
            $location->username = $request->input('username');
            $location->password = $request->input('password');
            $location->role = $request->input('role');
            $location->profile = $request->input('profile');
            $location->active = $request->input('active');
            $location->lastLatitude = $request->input('lastLatitude');
            $location->lastLongitude = $request->input('lastLongitude');
            $location->save();
            return response()->json($location, 201);
        }else{
            return response()->json(array('message'=>'Duplicate'), 409);
        }

    }
}
