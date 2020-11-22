<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ClientProdukController;
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

//tampilan admin
    //login

Route::get('registrasi', [AuthController::class, 'registrasi']);
Route::post('registrasi', [AuthController::class, 'store']);

    //beranda
Route::get('beranda', [HomeController::class, 'showBeranda'])->middleware('auth'); //laravel8
        // Route::get('/beranda', 'showBeranda@HomeController']); laravel 7
Route::get('kategori', [HomeController::class, 'showKategori'])->middleware('auth');
Route::get('promo', [HomeController::class, 'showPromo'])->middleware('auth');


//produk controller
Route::get('produk', [ProdukController::class, 'index'])->middleware('auth');
Route::get('produk/create', [ProdukController::class, 'create'])->middleware('auth');
Route::post('produk', [ProdukController::class, 'store'])->middleware('auth');
Route::get('produk/{produk}', [ProdukController::class, 'show'])->middleware('auth');
Route::get('produk/{produk}/edit', [ProdukController::class, 'edit'])->middleware('auth');
Route::put('produk/{produk}', [ProdukController::class, 'update'])->middleware('auth');
Route::delete('produk/{produk}', [ProdukController::class, 'destroy'])->middleware('auth');
Route::post('produk/filter', [ProdukController::class, 'filter'])->middleware('auth');

//user controller
Route::get('user', [UserController::class, 'index'])->middleware('auth');
Route::get('user/create', [UserController::class, 'create'])->middleware('auth');
Route::post('user', [UserController::class, 'store'])->middleware('auth');
Route::get('user/{user}', [UserController::class, 'show'])->middleware('auth');
Route::get('user/{user}/edit', [UserController::class, 'edit'])->middleware('auth');
Route::put('user/{user}', [UserController::class, 'update'])->middleware('auth');
Route::delete('user/{user}', [UserController::class, 'destroy'])->middleware('auth');



//autentikasi
Route::get('login', [AuthController::class, 'showLogin'])->name('login');
Route::post('login', [AuthController::class, 'prosesLogin']);
Route::get('logout', [AuthController::class, 'logout']);


//produk controller
Route::get('home', [ClientProdukController::class, 'home']);
Route::post('home/filter', [ClientProdukController::class, 'show']);
Route::get('produk_single/{produk}', [ClientProdukController::class, 'show']);
//tampilan user
// Route::get('/', function () {
//     return view('home');
// });


Route::get('/about', function () {
    return view('about');
});

Route::get('/blog', function () {
    return view('blog');
});

Route::get('/contact', function () {
    return view('contact');
});

Route::get('/produk_single', function () {
    return view('produk_single');
});

//upload gambar
Route::get('image-upload', [ ImageUploadController::class, 'imageUpload' ])->name('image.upload');
Route::post('image-upload', [ ImageUploadController::class, 'imageUploadPost' ])->name('image.upload.post');