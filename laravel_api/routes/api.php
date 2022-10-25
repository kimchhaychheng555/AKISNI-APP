<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ImageController;


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

# IMAGE
Route::post("image", function (Request $request) {
    return ImageController::upload($request);
});

# USER API
Route::get("user", function () {
    return UserController::getUser();
});
Route::get('user/{id}', function ($id) {
    return UserController::findOne($id);
});
Route::post('user', function (Request $request) {
    return UserController::createUser($request);
});
Route::post('user/update', function (Request $request) {
    return UserController::updateUser($request);
});
Route::post('user/login', function (Request $request) {
    return UserController::login($request);
});