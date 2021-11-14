<?php

use App\Http\Controllers\Apis\UserApiController;
use App\Http\Controllers\SystemUserController;
use App\Http\Controllers\Auth\RegisterController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*index
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::resource('/userapi', Apis\UserApiController::class);
Route::get('/userapi/search/{name}', [UserApiController::class, 'search']);
// Route::post('/userapi', [UserApiController::class, 'store']);
// Route::get('/api', [ApiController::class, 'transaction']);
// Route::post('/api', [ApiController::class, 'index']);


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
