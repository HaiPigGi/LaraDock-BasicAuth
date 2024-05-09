@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Welcome to Your Dashboard') }}</div>

                <div class="card-body text-center">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif

                    <h2 class="mb-4">Welcome back, {{ Auth::user()->name }}!</h2>

                    {{ __('You are logged in!') }}

                    <img src="{{ asset('img/pacman.gif') }}" class="img-fluid mt-4" alt="Welcome Image">

                    <p class="mt-4">Explore your dashboard and enjoy your time!</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection