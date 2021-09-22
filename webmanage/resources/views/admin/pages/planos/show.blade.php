@extends('adminlte::page')
@section('title',"Detalhes do Plano {$plano->name}")

@section('content_header')
    <h1>Detalhes do Plano <b>{{ $plano->name }}</b> </h1>
@stop

@section('content')
    <div class="card">
        <div class="card-body">
            <ul>
                <li><strong>Nome: </strong>{{ $plano->name }}</li>
                <li><strong>Preço: R$ </strong>{{ number_format($plano->price, 2,',','.' )}}</li>
                <li><strong>Descrição: </strong>{{ $plano->description }}</li>
            </ul>
            <form action="{{ route('planos.destroy', $plano->url ) }}" method="POST">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn btn-danger">Deletar <i class="fas fa-trash"></i></button>
            </form>
        </div>
    </div>
@endsection

