<?php
Route::get('admin/planos','Admin\PlanoController@index')->name('planos.index');
Route::get('/', function () {
    return view('welcome');
});
