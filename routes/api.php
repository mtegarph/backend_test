<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\CommentController;

// Rute Autentikasi
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function ($router) {
    Route::post('/register', [AuthController::class, 'register'])->name('register');
    Route::post('/login', [AuthController::class, 'login'])->name('login');
    Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:api')->name('logout');
    Route::post('/refresh', [AuthController::class, 'refresh'])->middleware('auth:api')->name('refresh');
    Route::post('/me', [AuthController::class, 'me'])->middleware('auth:api')->name('me');
});

// Rute yang membutuhkan autentikasi JWT untuk Post dan Comment
Route::middleware(['auth:api'])->group(function () {
    // Rute CRUD untuk Post
    Route::get('/posts', [PostController::class, 'index']); 
    Route::get('/posts/{id}', [PostController::class, 'show']); 
    Route::post('/posts', [PostController::class, 'store']); 
    Route::put('/posts/{id}', [PostController::class, 'update']);
    Route::delete('/posts/{id}', [PostController::class, 'destroy']);

    // Rute CRUD untuk Comment terkait Post
    Route::get('/posts/{postId}/comments', [CommentController::class, 'index']); 
    Route::post('/posts/{postId}/comments', [CommentController::class, 'store']);
    Route::put('/comments/{id}', [CommentController::class, 'update']); 
    Route::delete('/comments/{id}', [CommentController::class, 'destroy']); 
});
