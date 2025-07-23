@extends('layouts.app')

@section('content')
    <!-- Visual Section / Banner -->
<section class="bg-white p-0">
    <div class="w-full h-180">
        <img src="{{ asset('images/pt spanduk.png') }}" class="w-full h-full object-cover" alt="MM Paint Banner">
    </div>
</section>

<section></section>
</section>

<!-- Custom Section Structure -->
<section class="bg-white py-16 px-6 md:px-20">
    <div class="max-w-6xl mx-auto">
        <h2 class="text-3xl font-bold text-center mb-12 text-indigo-700">Keunggulan Produk Kami</h2>
        
        <div class="grid md:grid-cols-3 gap-10">
            <!-- Feature 1 -->
            <div class="bg-gray-50 p-6 rounded-xl shadow-sm hover:shadow-md transition">
                <img src="{{ asset('images/palette.png') }}" alt="Color Options" class="w-full h-64 mb-4">
                <h3 class="text-lg font-semibold text-gray-800 mb-2">Pilihan Warna yang Banyak</h3>
                <p class="text-gray-600 leading-relaxed">
                    Pilihan warna yang beragam untuk memenuhi kebutuhan estetika dan fungsional Anda. Dari cat dinding hingga cat industri, kami punya solusinya.
                </p>
            </div>

            <!-- Feature 2 -->
            <div class="bg-gray-50 p-6 rounded-xl shadow-sm hover:shadow-md transition">
                <img src="{{ asset('images/durable.png') }}" alt="Durability" class="w-full h-64 mb-4">
                <h3 class="text-lg font-semibold text-gray-800 mb-2">Daya Tahan yang Kuat</h3>
                <p class="text-gray-600 leading-relaxed">
                    Formula cat yang dirancang untuk ketahanan tinggi terhadap cuaca, korosi, dan keausan — cocok untuk industri hingga rumah tinggal.
                </p>
            </div>

            <!-- Feature 3 -->
            <div class="bg-gray-50 p-6 rounded-xl shadow-sm hover:shadow-md transition">
                <img src="{{ asset('images/voc.png') }}" alt="Eco Friendly" class="w-full h-64 mb-4">
                <h3 class="text-lg font-semibold text-gray-800 mb-2">Ramah Lingkungan</h3>
                <p class="text-gray-600 leading-relaxed">
                    Cat kami memenuhi standar lingkungan dengan bahan-bahan aman dan berkelanjutan. Komitmen kami: produk unggul dan bumi sehat.
                </p>
            </div>
        </div>
    </div>
</section>
@endsection
</html>

<!-- Product Image Trigger -->

<!-- Add Alpine.js x-cloak CSS if not already present -->
<style>
    [x-cloak] { display: none !important; }
</style>

<!-- Product Image Trigger -->
