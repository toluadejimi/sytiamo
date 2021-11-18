<?php

namespace App\Http\Controllers\Apis;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LoanProduct;
use App\Models\Loan;
use App\Models\LoanRepayment;
use Illuminate\Http\Response;

class LoanProductApiController extends Controller
{

    public $successStatus = true;
    public $failedStatus = false;

    //
    public function loanproduct()
    {
        $loanproduct = LoanProduct::all();
        if ($this->successStatus == true) {
            return response()->json(["status" => $this->successStatus, $loanproduct])
    ->setStatusCode(Response::HTTP_OK, Response::$statusTexts[Response::HTTP_OK]);
        }else{
            return response()->json(["status" => $this->failedStatus,'error' => 'Unauthorised'], 401);
        }
    }

    public function loans()
    {
        $loan = Loan::all();
        if ($this->successStatus == true) {
            return response()->json(["status" => $this->successStatus, $loan])
    ->setStatusCode(Response::HTTP_OK, Response::$statusTexts[Response::HTTP_OK]);
        }else{
            return response()->json(["status" => $this->failedStatus,'error' => 'Unauthorised'], 401);
        }
    }

    public function createloan(Request $request)
    {
        $request->validate([
            'loan_id'                => 'nullable|unique:loans',
            'loan_product_id'        => 'nullable',
            'borrower_id'            => 'required',
            'currency_id'            => 'nullable',
            'first_payment_date'     => 'nullable',
            'release_date'           => 'required',
            'applied_amount'         => 'required|numeric',
            'late_payment_penalties' => 'required|numeric',
            'attachment'             => 'nullable|mimes:jpeg,JPEG,png,PNG,jpg,doc,pdf,docx,zip',
        ]);
        $create = Loan::create($request->all());

        if ($this->successStatus == true) {
            return response()->json(["status" => $this->successStatus, $create])
    ->setStatusCode(Response::HTTP_OK, Response::$statusTexts[Response::HTTP_OK]);
        }else{
            return response()->json(["status" => $this->failedStatus,'error' => 'Unauthorised'], 401);
        }
    }

    
}
