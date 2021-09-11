<?php
Route::post('admin/planos/{url}','Admin\PlanoController@show')->name('planos.show');
Route::get('admin/planos','Admin\PlanoController@index')->name('planos.index');
Route::get('admin/planos','Admin\PlanoController@index')->name('planos.index');
Route::get('admin/planos/create','Admin\PlanoController@create')->name('planos.create');
Route::get('/', function () {
    return view('welcome');
});
