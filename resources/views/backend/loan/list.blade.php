@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header d-flex align-items-center">
				<span class="panel-title">{{ _lang('Loan List') }}</span>
				<div class="ml-auto">
					<select name="status" class="select-filter filter-select">
						<option value="">{{ _lang('All') }}</option>
						<option value="0">{{ _lang('Pending') }}</option>
						<option value="1">{{ _lang('Approved') }}</option>
						<option value="2">{{ _lang('Completed') }}</option>
					</select>
					<a class="btn btn-primary btn-sm" href="{{ route('loans.create') }}"><i class="icofont-plus-circle"></i> {{ _lang('Add New') }}</a>
				</div>
			</div>

			<div class="card-body">
				<table id="loans_table" class="table table-bordered">
					<thead>
						<tr>
							<th>{{ _lang('Loan ID') }}</th>
							<th>{{ _lang('Loan Product') }}</th>
							<th>{{ _lang('Borrower') }}</th>
							<th>{{ _lang('Release Date') }}</th>
							<th>{{ _lang('Applied Amount') }}</th>
							<th>{{ _lang('Status') }}</th>
							<th class="text-center">{{ _lang('Action') }}</th>
						</tr>
						@foreach ($loans as $loan)
                        <tr>
                            
                            <td>{{ $loan->id }}</td>
                            <td>
								@if ($loan->loan_product_id == '1')
									Student Loan
								@elseif($loan->loan_product_id == '2')
									Business Loan
								@elseif($loan->loan_product_id == '3')
									Enterprise Loan
								@endif
							</td>
                            <td>
                               
                                {{ $loan->borrower_id }}
							</td>
                            {{-- <td>{{ $loan->branch->name }}</td> --}}
                            {{-- <td>
                                @if ($loan->status != 0)
                                    Active
                                @else
                                    In Active
                                @endif
                            </td>
                            <td>
                                @if ($loan->email_verified_at != null)
                                    Yes
                                @else
                                    No
                                @endif
                            </td>
                            <td>
                                @if ($loan->sms_verified_at != null)
                                    Yes
                                @else
                                    No
                                @endif
                            </td> --}}
                            <td class="text-center">
                                <span class="dropdown">
                                    <button class="btn btn-primary dropdown-toggle btn-sm" type="button"
                                        id="dropdownMenuButton" data-toggle="dropdown">
                                        {{ _lang('Action') }}
                                    </button>
                                    <form action="{{ action('LoanController@destroy', $id) }}" method="post">
                                        {{ csrf_field() }}
                                        <input name="_method" type="hidden" value="DELETE">

                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a href="{{ action('LoanController@edit', $id) }}"
                                                data-title="{{ _lang('Update User') }}"
                                                class="dropdown-item ajax-modal"><i class="icofont-ui-edit"></i>
                                                {{ _lang('Edit') }}</a>
                                            <a href="{{ action('LoanController@show', $id) }}"
                                                data-title="{{ _lang('View User') }}"
                                                class="dropdown-item ajax-modal"><i class="icofont-eye-alt"></i>
                                                {{ _lang('View') }}</a>
                                            <button class="btn-remove dropdown-item" type="submit"><i
                                                    class="icofont-trash"></i> {{ _lang('Delete') }}</button>
                                        </div>
                                    </form>
                                </span>
                            </td>
                        </tr>
                        @endforeach
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
@endsection

@section('js-script')
<script src="{{ asset('public/backend/assets/js/datatables/loans.js') }}"></script>
@endsection