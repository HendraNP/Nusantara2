<nav class="bg-white shadow-md">
    <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
        <!-- Logo -->
        <a href="{{ url('/') }}" class="block w-32">
            <img src="{{ asset('images/logo.png') }}" alt="Company Logo" class="h-12 w-auto">
        </a>

        <!-- Centered Menu -->
        <ul class="hidden md:flex justify-center flex-1 space-x-16 text-gray-700 font-medium">
            <li><a href="{{ url('/') }}" class="hover:text-blue-600 transition">Home</a></li>
            <li><a href="{{ url('/product') }}" class="hover:text-blue-600 transition">Product</a></li>
            <li><a href="{{ url('/about') }}" class="hover:text-blue-600 transition">About Us</a></li>
            <li><a href="{{ url('/contact') }}" class="hover:text-blue-600 transition">Contact Us</a></li>
        </ul>
        
        <!-- Right spacer to balance flexbox layout -->
        <div class="w-32 hidden md:block"></div>
    </div>
</nav>
