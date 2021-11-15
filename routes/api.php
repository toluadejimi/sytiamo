<?php

use App\Http\Controllers\Apis\UserApiController;
use App\Http\Controllers\Apis\LoginApiController;
use App\Http\Controllers\Apis\LoanProductApiController;
use App\Http\Controllers\Apis\LoanrepaymentApiController;
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
Route::post('/login', [LoginApiController::class, 'login']);
Route::get('/loanproduct', [LoanProductApiController::class, 'loanproduct']);
Route::get('/loans', [LoanProductApiController::class, 'loans']);
Route::resource('/loanrepay', Apis\LoanrepaymentApiController::class);
Route::post('/createloan', [LoanProductApiController::class, 'createloan']);


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
