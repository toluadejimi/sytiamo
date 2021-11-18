<?php

namespace App\Http\Controllers\Apis;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Http\Response;



class UserApiController extends Controller
{

    public $successStatus = true;
    public $failedStatus = false;

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = User::all();
        
        if ($this->successStatus == true) {
            return response()->json(["status" => $this->successStatus, $user])
    ->setStatusCode(Response::HTTP_OK, Response::$statusTexts[Response::HTTP_OK]);
        }else{
            return response()->json(["status" => $this->failedStatus,'error' => 'Unauthorised'], 401);
        }
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'first_name'            => 'required|max:255',
            'middle_name'           => 'nullable|max:255',
            'last_name'           => 'required|max:255',
            'branch_id'       => 'required',
            'status'          => 'required',
            'profile_picture' => 'nullable|image',
            //'password'        => 'nullable|min:6',
        ]);
        $create = User::create($request->all());
        if ($this->successStatus == true) {
            return response()->json(["status" => $this->successStatus, $create])
    ->setStatusCode(Response::HTTP_OK, Response::$statusTexts[Response::HTTP_OK]);
        }else{
            return response()->json(["status" => $this->failedStatus,'error' => 'Unauthorised'], 401);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $user = User::find($id);
        $user->update($request->all());
        //return $user;
        if ($this->successStatus == true) {
            return response()->json(["status" => $this->successStatus, $user])
    ->setStatusCode(Response::HTTP_OK, Response::$statusTexts[Response::HTTP_OK]);
        }else{
            return response()->json(["status" => $this->failedStatus,'error' => 'Unauthorised'], 401);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        return User::destroy($id);
    }
    public function search($name)
    {
        //
        return User::where('name', 'like', '%'.$name.'%')->get();
    }
}
