<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\WebController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\Auth\LoginController;
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
Auth::routes();
Route::post('/member/cek_email', [LoginController::class, 'cekEmail']);
Route::get('/', [WebController::class, 'index']);
Route::get('/about', [WebController::class, 'about']);
Route::get('/community', [WebController::class, 'community']);
Route::post('/community_post', [WebController::class, 'community_post']);
Route::post('/member_add', [WebController::class, 'registerUser']);
Route::get('/detail/{id}', [WebController::class, 'detail']);
Route::get('/shop', [WebController::class, 'shop']);
Route::get('/my_order', [WebController::class, 'order']);
Route::get('/my_order/detail/{id}', [WebController::class, 'order_detail']);
Route::post('/my_order_upload/{id}', [WebController::class, 'upload_bukti']);
Route::post('/beri_penilaian/', [WebController::class, 'insertPenilaian']);
Route::get('/shop_detail/{id}', [WebController::class, 'shop_detail']);
Route::get('/pesan_order/{id}/{id_room}', [HomeController::class, 'messageUserTransaction']);
Route::get('/pesan_order_send/{id}', [HomeController::class, 'createRoom']);
Route::post('/send_pesan_saja/{id}', [HomeController::class, 'sendMesaage']);
//admin area
Route::post('/shop/order_now', [HomeController::class, 'purchaseNow']);
Route::get('/home', [HomeController::class, 'index']);
Route::get('/admin_area', [HomeController::class, 'admin_area']);
Route::get('/admin_area/product', [HomeController::class, 'product']);
Route::get('/admin_area/product/create', [HomeController::class, 'add_product']);
Route::get('/admin_area/product/edit/{id}', [HomeController::class, 'edit_product']);
Route::post('/admin_area/product/add', [HomeController::class, 'create_product']);
Route::post('/admin_area/product/update/{id}', [HomeController::class, 'update_product']);
Route::get('/admin_area/product/delete/{id}', [HomeController::class, 'delete_product']);
Route::get('/admin_area/home', [HomeController::class, 'home']);
Route::get('/admin_area/home/create', [HomeController::class, 'add_home']);
Route::get('/admin_area/home/edit/{id}', [HomeController::class, 'edit_home']);
Route::get('/admin_area/home/delete/{id}', [HomeController::class, 'delete_home']);
Route::post('/admin_area/home/add', [HomeController::class, 'create_home']);
Route::post('/admin_area/home/update/{id}', [HomeController::class, 'update_home']);
Route::get('/admin_area/community', [HomeController::class, 'community']);
Route::get('/admin_area/community/detail/{id}', [HomeController::class, 'detail_community']);
Route::get('/admin_area/order', [HomeController::class, 'order']);
Route::get('/admin_area/order/detail/{id}', [HomeController::class, 'order_detail']);
Route::get('/admin_area/order_status/{id}/{status}', [HomeController::class, 'changeStatus']);

