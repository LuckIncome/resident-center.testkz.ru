<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PagesController;
use App\Http\Controllers\FeedbackController;
use App\Http\Controllers\EducationController;
use App\Http\Controllers\WorkController;
use App\Http\Controllers\StatusController;
use App\Http\Controllers\CitizenshipController;
use App\Http\Controllers\ResidencyController;
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

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::post('/p_review', [FeedbackController::class,'review'])->name('p_review');
Route::post('/c_order', [FeedbackController::class,'order'])->name('c_order');

Route::group(['prefix' => 'education'], function() {
    Route::get('/', [EducationController::class, 'index'])->name('education');  
    Route::get('/{article}', [EducationController::class, 'show'])->name('education.show');  
});

Route::group(['prefix' => 'work'], function() {
    Route::get('/', [WorkController::class, 'index'])->name('work');
    Route::get('/{article}', [WorkController::class, 'show'])->name('work.show');   
});

Route::group(['prefix' => 'citizenship'], function() {
    Route::get('/', [CitizenshipController::class, 'index'])->name('citizenship'); 
    Route::get('/{article}', [CitizenshipController::class, 'show'])->name('citizenship.show');   
});

Route::group(['prefix' => 'residency'], function() {
    Route::get('/', [ResidencyController::class, 'index'])->name('residency'); 
    Route::get('/{article}', [ResidencyController::class, 'show'])->name('residency.show');    
});

Route::group(['prefix' => 'status'], function() {
    Route::get('/', [StatusController::class, 'index'])->name('status');   
    Route::get('/{article}', [StatusController::class, 'show'])->name('status.show'); 
});

Route::get('/{page?}',[PagesController::class,'getPage'])->name('pages.get');