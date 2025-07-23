@extends('layouts.app')

@section('content')
<section class="bg-white py-12 px-6">
    <div class="max-w-7xl mx-auto">
        <h2 class="text-3xl font-bold text-center text-gray-800 mb-10">Produk</h2>
        {{-- Product Cards --}}
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8">
            @foreach ($product as $item)
            <a href="{{ url('/product/'.$item['product_code']) }}" class="block">
                <div class="bg-white border rounded-lg shadow-md p-4 text-center">
                    <img src="{{ asset('images/'.$item['image'])}}" alt="{{ $item['product_name'] }}" class="h-40 mx-auto mb-4 object-contain" />
                    <p class="text-sm font-semibold text-gray-800 uppercase">{{ $item['product_name'] }}</p>
                </div>
                </a>
            @endforeach
        </div>
    </div>
</section>

@endsection
