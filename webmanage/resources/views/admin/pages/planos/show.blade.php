@extends('adminlte::page')
@section('title',"Detalhes do Plano {$plano->name}")

@section('content_header')
    <h1>Detalhes do Plano <b>{{ $plano->name }}</b> </h1>
@stop

@section('content')
    <div class="card">
        <div class="card-body">
            <ul>
                <li><strong>Nome: {{ $plano->name }}</strong></li>
                <li><strong>Preço: {{ $plano->price }}</strong></li>
                <li><strong>Descrição: {{ $plano->description }}</strong></li>
            </ul>
        </div>
    </div>
@endsection

