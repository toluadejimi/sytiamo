@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-lg-12">
        <div class="card">

            <div class="card-header d-flex align-items-center">
                <h4 class="header-title">{{ ucwords(str_replace("_"," ",$status)).' '._lang('Users') }}</h4>

                <div class="ml-auto">
                    <div class="dropdown d-inline-block">
                        <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="userFilter" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            {{ ucwords(str_replace("_"," ",$status)).' '._lang('Users') }}
                        </button>

                        <div class="dropdown-menu" aria-labelledby="userFilter">
                            <a class="dropdown-item" href="{{ route('users.index') }}">{{ _lang('All Users') }}</a>
                            <a class="dropdown-item" href="{{ route('users.filter') }}/email_verified">{{ _lang('Email Verified') }}</a>
                            <a class="dropdown-item" href="{{ route('users.filter') }}/email_unverified">{{ _lang('Email Unverified') }}</a>
                            <a class="dropdown-item" href="{{ route('users.filter') }}/sms_verified">{{ _lang('SMS Verified') }}</a>
                            <a class="dropdown-item" href="{{ route('users.filter') }}/sms_unverified">{{ _lang('SMS Unverified') }}</a>
                            <a class="dropdown-item" href="{{ route('users.filter') }}/inactive">{{ _lang('Inactive Users') }}</a>
                        </div>
                    </div>

                    <a class="btn btn-primary btn-sm ajax-modal" data-title="{{ _lang('CREATE NEW USER') }}"
                        href="{{ route('users.create') }}"><i class="icofont-plus-circle"></i> {{ _lang('Add New') }}</a>
                </div>
            </div>

            <div class="card-body">
                <table id="users_table" class="table table-bordered" data-status="{{ $status }}">
                    <thead>
                        <tr>
                            <th class="text-center">#</th>
                            <th>{{ _lang('Name') }}</th>
                            <th>{{ _lang('Email') }}</th>
                            <th>{{ _lang('Phone') }}</th>
                            <th>{{ _lang('Location') }}</th>
                            <th>{{ _lang('Status') }}</th>
                            <th>{{ _lang('Email Verified') }}</th>
                            <th>{{ _lang('SMS Verified') }}</th>
                            <th class="text-center">{{ _lang('Action') }}</th>
                        </tr>
                        @foreach ($users as $user)
                        <tr>
                            
                            <td class="text-center">#</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>{{ $user->phone }}</td>
                            <td>{{ $user->branch->name }}</td>
                            
                            <td>
                                @if ($user->status != 0)
                                    Active
                                @else
                                    In Active
                                @endif
                            </td>
                            <td>
                                @if ($user->email_verified_at != null)
                                    Yes
                                @else
                                    No
                                @endif
                            </td>
                            <td>
                                @if ($user->sms_verified_at != null)
                                    Yes
                                @else
                                    No
                                @endif
                            </td>
                            <td class="text-center">
                                <span class="dropdown">
                                    <button class="btn btn-primary dropdown-toggle btn-sm" type="button"
                                        id="dropdownMenuButton" data-toggle="dropdown">
                                        {{ _lang('Action') }}
                                    </button>
                                    <form action="{{ action('UserController@destroy', $user['id']) }}" method="post">
                                        {{ csrf_field() }}
                                        <input name="_method" type="hidden" value="DELETE">

                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a href="{{ action('UserController@edit', $user['id']) }}"
                                                data-title="{{ _lang('Update User') }}"
                                                class="dropdown-item ajax-modal"><i class="icofont-ui-edit"></i>
                                                {{ _lang('Edit') }}</a>
                                            <a href="{{ action('UserController@show', $user['id']) }}"
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
<script src="{{ asset('public/backend/assets/js/datatables/users.js') }}"></script>
@endsection