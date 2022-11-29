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
    
        return response()->json($request, 200);

        if($res === null){
            return response()->json('', 404);
        }else{
            $res->title = $request->input('title');
            $res->company = $request->input('company');
            $res->name = $request->input('name');
            $res->installDate = $request->input('installDate');
            $res->power = $request->input('power');
            $res->type = $request->input('type');
            $res->deposit = $request->input('deposit');
            $res->location = $request->input('location');
            $res->image = $request->input('image');
            $res->latitude = $request->input('latitude');
            $res->longitude = $request->input('longitude');
            $res->save();
            return response()->json($res, 200);
        }

    }

    public function create(Request $request){

        $res = LocationsListModel::where('id', $request->input('id'))
                        ->get();
    
        if($res->count() == 0){
            $location = new LocationsListModel();
            $location->id = $request->input('id');
            $location->title = $request->input('title');
            $location->company = $request->input('company');
            $location->name = $request->input('name');
            $location->installDate = $request->input('installDate');
            $location->power = $request->input('power');
            $location->type = $request->input('type');
            $location->deposit = $request->input('deposit');
            $location->location = $request->input('location');
            $location->image = $request->input('image');
            $location->latitude = $request->input('latitude');
            $location->longitude = $request->input('longitude');
            $location->save();
            return response()->json($location, 201);
        }else{
            return response()->json(array('message'=>'Duplicate'), 409);
        }

    }

    public function delete(Request $request){

        $res = LocationsListModel::where('id', $request->id)
                        ->get();
    
        if($res->count() > 0){
            $data = LocationsListModel::find($request->id);
            $data->delete();
            return response()->json($data, 200);
        }else{
            return response()->json(array('message'=>'Not Found'), 404);
        }
    }
}
