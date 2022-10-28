<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LocationsListController;
use App\Http\Controllers\UserActiveController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\PingController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::get("/ping",[PingController::class,"ping"]);
Route::post("/image/{filename}",[ImageController::class,"uploadFile"]);
# User ROUTE
Route::get("/user",[UserController::class,"getUser"]);
Route::post("/user",[UserController::class,"createUser"]);
Route::get("/user/{id}",[UserController::class,"findOne"]);
Route::post("/user/update",[UserController::class,"updateUser"]);
Route::post("/user/login",[UserController::class,"login"]);
Route::delete("/user/{id}",[UserController::class,"deleteUser"]);

# Location List
Route::get("/locations",[LocationsListController::class,"get"]);
Route::get("/locations/{id}",[LocationsListController::class,"findOne"]);
Route::post("/locations",[LocationsListController::class,"create"]);
Route::delete("/locations/{id}",[LocationsListController::class,"delete"]);

# Location List
Route::get("/userActive",[UserActiveController::class,"get"]);
Route::get("/userActive/{id}",[UserActiveController::class,"findOne"]);
Route::post("/userActive",[UserActiveController::class,"create"]);
Route::delete("/userActive/{id}",[UserActiveController::class,"delete"]);