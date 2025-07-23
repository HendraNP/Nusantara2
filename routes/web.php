<?php

use App\Models\ColourCatalog;
use App\Models\FunctionType;
use Illuminate\Support\Facades\Route;
use App\Models\Product;

Route::get('/', function () {
    return view('welcome');
});


Route::get('/about', function () {
    return view('about');
})->name('about');

Route::get('/product', function () {
    $product = Product::get();
    return view('product', compact('product'));
})->name('product');

Route::get('/product/{slug}', function ($slug) {
    $product = Product::where('product_code','=', $slug)->first();

    return view('productdetail', compact('product'));
})->name('detail');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');
