<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="google-site-verification" content="2cj_3-3Mjy_2G4Hq-h9tNkonmiHuGxP6H59bnFi_cuo" />
    <link rel="icon" href="{{ asset('images/favicon.ico') }}" type="image/x-icon">
    <title>@yield('title', 'Nusantara Tech Innovations, Penyedia Peralatan Mengecat')</title>
    <meta name="description" content="@yield('description', 'Temukan produk peralatan mengecat terbaik dari PT. Nusantara Tech Innovations. Kami menyediakan berbagai bahan baku cat berkualitas untuk industri.')">
    <meta name="keywords" content="pigmen, resin, bahan baku cat, industri pengecatan, PT. Nusantara Tech Innovations, kuas, paint roller">
    @stack('styles')
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    @include('partials.organization-jsonld')
</head>
<body class="bg-white text-gray-900">
    {{-- Optional navbar --}}
    @include('partials.nav')

    <main>
        @yield('content')
    </main>

    {{-- Optional footer --}}
    @include('partials.footer')
    @stack('scripts')
</body>
</html>
