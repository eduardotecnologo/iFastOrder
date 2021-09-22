@include('admin.includes.alerts')
<div class="form-group">
    <label style="margin-left: 5px">Nome:</label>
    <input type="text" name="name" placeholder="Nome" class="form-control" value="{{ $plano->name ?? old('name') }}">
</div>
<div class="form-group">
    <label style="margin-left: 5px">Preço:</label>
    <input type="text" name="price" placeholder="Preço" class="form-control" value="{{ $plano->price ?? old('price') }}">
</div>
<div class="form-group">
    <label style="margin-left: 5px">Descrição:</label>
    <input type="text" name="description" placeholder="Descrição" class="form-control" value="{{ $plano->description ?? old('description')}}">
</div>
<div class="form-group">
    <button type="submit" class="btn btn-success">Salvar</button>
</div>
