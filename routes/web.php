<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MapController;
use App\Http\Controllers\AdminController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::match(['get', 'post'], '/', [MapController::class, 'show']);
Auth::routes(['register' => false, 'reset' => false]);
Route::match(['get', 'post'], '/admin',  [AdminController::class, 'index'])->name('admin');
Route::get('/point/moderate/{id}',  [AdminController::class, 'changeStatus'])->where('id', '[0-9]+');
Route::get('/point/delete/{id}',  [AdminController::class, 'delete'])->where('id', '[0-9]+');
Route::match(['get', 'post'], '/point/edit/{id}',  [AdminController::class, 'edit'])->where('id', '[0-9]+');
