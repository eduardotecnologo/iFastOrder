@extends('adminlte::page')
@section('title','Planos')

@section('content_header')
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('admin.index')}}">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="{{ route('planos.index')}}">Planos</a></li>
        </ol>
    <h1>Todos os Planos <a href="{{ route('planos.create') }}"
        class="btn btn-success">Criar novo  <i class="fas fa-plus-circle"></i></a>
    </h1>

@stop

@section('content')
    <div class="card">
        <div class="card-header">
            <form action="{{ route('planos.search')}}" method="POST" class="form form-inline">
                @csrf
                <input type="text" name="filter" placeholder="Nome do Plano" class="form-control" value="{{ $filters['filter'] ?? '' }}">
                <button class="btn btn-warning" style="margin-left: 5px">Buscar <i class="fas fa-search-plus"></i></button>
            </form>
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
                    @foreach ($planos as $plano)
                        <tr>
                            <td>{{ $plano->name }}</td>
                            <td>{{ number_format($plano->price, 2,',','.') }}</td>
                            <td>{{ $plano->description }}</td>
                            <td><a href="{{ route('planos.edit', $plano->url) }}" class="btn btn-secondary">Editar</a></td>
                            <td><a href="{{ route('planos.show', $plano->url) }}" class="btn btn-info">Detalhes</a></td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="card-footer">
            @if (isset($filters))
                {!! $planos->appends($filters)->links() !!}
            @else
                {!! $planos->links() !!}
            @endif
        </div>
    </div>
@stop
