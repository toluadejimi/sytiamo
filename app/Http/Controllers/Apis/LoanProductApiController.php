<?php

namespace App\Http\Controllers\Apis;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LoanProduct;
use App\Models\Loan;
use App\Models\LoanRepayment;


class LoanProductApiController extends Controller
{
    //
    public function loanproduct()
    {
        return LoanProduct::all();
    }

    public function loans()
    {
        return Loan::all();
    }

    public function createloan(Request $request)
    {
        $request->validate([
            'loan_id'                => 'nullable|unique:loans',
            'loan_product_id'        => 'nullable',
            'borrower_id'            => 'required',
            'currency_id'            => 'nullable',
            'first_payment_date'     => 'required',
            'release_date'           => 'required',
            'applied_amount'         => 'required|numeric',
            'late_payment_penalties' => 'required|numeric',
            'attachment'             => 'nullable|mimes:jpeg,JPEG,png,PNG,jpg,doc,pdf,docx,zip',
        ]);
        return Loan::create($request->all());
    }

    // public function loanrepay()
    // {
    //     return LoanRepayment::all();
    // }

    // public function edit($id)
    // {
    //     //
    // }
    
    // public function update(Request $request, $id)
    // {
    //     //
    //     $repay = LoanRepayment::find($id);
    //     $repay->update($request->all());
    //     return $repay;
    // }
}
