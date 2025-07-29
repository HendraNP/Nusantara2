@extends('layouts.app')

@section('content')
<!-- About Section -->
<div class="bg-gradient-to-b from-white via-gray-50 to-white py-20 px-6 md:px-20">
    <div class="max-w-7xl mx-auto space-y-16">

        <!-- Logo & Intro -->
        <div class="grid grid-cols-1 md:grid-cols-5 gap-10 items-start">
            <div class="md:col-span-1 flex justify-center md:justify-start">
                <img src="{{ asset('images/logo.png') }}" alt="Company Logo" class="w-24 md:w-32">
            </div>
            <div class="md:col-span-4 space-y-6">
                <h2 class="text-3xl md:text-4xl font-bold text-indigo-800">
                    PT. Nusantara Tech Innovations
                </h2>
                <div class="w-20 h-1 bg-indigo-600 rounded"></div>

                <p class="text-gray-700 text-lg leading-relaxed">
                   PT. Nusantara Tech Innovation adalah perusahaan yang berfokus dalam menyediakan bahan baku cat berkualitas bagi industri manufaktur dan pengecatan. Dengan jaringan distribusi terpercaya dan pemahaman mendalam tentang formula serta kebutuhan pasar, kami mendukung para industri untuk menciptakan produk yang unggul dan tahan lama
                </p>
                <p class="text-gray-700 text-lg leading-relaxed">
                    Produk kami mencakup material pigmen warna, resin bahkan kuas ataupun paint roller.
                </p>
                <p class="text-gray-700 text-lg leading-relaxed">
                    Fokus kami adalah memastikan setiap klien mendapatkan akses ke material yang konsisten, aman, dan sesuai standar, mulai dari resin, pigment, hingga aditif khusus. Bersama Nusantara Tech Innovation, kami membentuk sinergi yang memperkuat rantai pasokan dan inovasi dalam dunia pengecatan.
                </p>
            </div>
        </div>

        <!-- Vision & Mission -->
        <div class="bg-white rounded-lg shadow-sm p-8 md:flex md:space-x-12 space-y-10 md:space-y-0">
            <div class="md:w-1/2">
                <h3 class="text-2xl font-bold text-indigo-800 mb-4">Visi</h3>
                <p class="text-gray-700 text-lg leading-relaxed">
                    Memimpin serta menjadi brand yang bersahabat dalam industri cat, coating dan anti korosi di Indonesia serta di dunia.
                </p>
            </div>

            <div class="md:w-1/2">
                <h3 class="text-2xl font-bold text-indigo-800 mb-4">Misi</h3>
                <ul class="list-disc list-inside space-y-3 text-gray-700 text-lg leading-relaxed">
                    <li>Menjadi brand pilihan utama yang dipakai dalam industri cat, coating dan anti korosi</li>
                    <li>Bersahabat dengan ritel, industrial, konstruksi & pekerjaan umum</li>
                    <li>Menjadi perusahaan cat yang ramah lingkungan menuju “Go Green Industry”</li>
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection
