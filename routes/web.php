<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\PostsController;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\AboutController;
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

Route::get('/', [PagesController::class, 'index']);

Route::resource('/blog', PostsController::class);
//Comments
//Route::post('comments/{post_id}', ['uses'=>\App\Http\Controllers\CommentController::class,'as'=>'comments.store']);
Auth::routes();

Route::get('/home', [\App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::get('/contact_us',[ContactController::class,'contact']);

Route::post('/send_message',[ContactController::class,'sendEmail'])->name('contact.send');

Route::get('/about',[AboutController::class,'about']);



Route::post('comments/{post_id}', [\App\Http\Controllers\CommentController::class, 'store'])->name('comments.store');



