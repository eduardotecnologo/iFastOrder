@extends('adminlte::page')
@section('title','Novo Plano')

@section('content_header')
    <h1>Novo Plano</h1>
@stop

@section('content')
<div class="card">
    <div class="card-body">
        <form action="{{ route('planos.store') }}" class="form" method="POST">
            @csrf
            @include('admin.pages.planos._partials.form')
        </form>
    </div>
</div>
@stop
