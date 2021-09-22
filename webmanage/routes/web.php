<?php
Route::get('admin/planos/create', 'Admin\PlanoController@create')->name('planos.create');
Route::any('admin/planos/search','Admin\PlanoController@search')->name('planos.search');
Route::put('admin/planos/{url}','Admin\PlanoController@update')->name('planos.update');
Route::delete('admin/planos/{url}','Admin\PlanoController@destroy')->name('planos.destroy');
Route::get('admin/planos/{url}/edit','Admin\PlanoController@edit')->name('planos.edit');
Route::get('admin/planos/{url}','Admin\PlanoController@show')->name('planos.show');
Route::post('admin/planos', 'Admin\PlanoController@store')->name('planos.store');
Route::get('admin/planos','Admin\PlanoController@index')->name('planos.index');

// Admin
Route::get('admin','Admin\PlanoController@index')->name('admin.index');
Route::get('/', function () {
    return view('welcome');
});
