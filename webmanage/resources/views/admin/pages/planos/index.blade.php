@extends('adminlte::page')
@section('title','Planos')

@section('content_header')
    <h1>Planosa <a href="{{ route('planos.create') }}" class="btn btn-success">Criar novo</a> </h1>
@stop

@section('content')
    <div class="card">
        <div class="card-header">
            #filtros
        </div>
        <div class="card-body">
            <table class="table table-condensed">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Preço</th>
                        <th>Descrição</th>
                        <th width="50px">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($planos as $plan)
                        <tr>
                            <td>{{ $plan->name }}</td>
                            <td>{{ $plan->price }}</td>
                            <td>{{ $plan->description }}</td>
                            <td><a href="#" class="btn btn-warning">Ver</a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            {!! $planos->links() !!}
        </div>
    </div>
@stop
