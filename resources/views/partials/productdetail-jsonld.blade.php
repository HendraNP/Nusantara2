@php echo <<<EOT
<script type="application/ld+json">
{
  "@context": "https://schema.org/",
  "@type": "Product",
  "name": "{{ $product->product_name }}",
  "image": [
    "{{ asset($product->image) }}"
  ],
  "description": "{!! json_encode(nl2br(e($product->description))) !!}",


  "brand": {
    "@type": "Brand",
    "name": "{{ $product->product_brand }}"
  },
  "additionalProperty": [
    {
      "@type": "PropertyValue",
      "name": "Keywords",
      "value": ['pigmen, kuas, paint roller, resin, bahan baku cat, industri pengecatan, PT. Nusantara Tech Innovations, cat dinding, cat epoxy, cat anti korosi, cat tembok, cat warna, cat berkualitas, cat dinding terbaik, cat epoxy terbaik, cat anti korosi terbaik, cat tembok eksterior, cat tembok interior, cat dinding eksterior, cat dinding interior, cat dinding murah, cat dinding berkualitas, cat epoxy murah, cat epoxy berkualitas, cat anti korosi murah, cat anti korosi berkualitas, cat tembok tahan lama, cat epoxy tahan lama, cat anti korosi tahan lama, cat dinding tahan lama, cat tembok berkualitas tinggi, cat dinding berkualitas tinggi, cat epoxy berkualitas tinggi, cat anti korosi berkualitas tinggi, beli cat tembok online, beli cat epoxy online, beli cat anti korosi online, jual cat dinding, jual cat epoxy, jual cat anti korosi, harga cat tembok terbaru, harga cat epoxy terbaru, harga cat anti korosi terbaru, cat dinding harga terjangkau, cat epoxy harga terjangkau, cat anti korosi harga terjangkau ,cat dinding harga murah ,cat epoxy harga murah ,cat anti korosi harga murah ,cat dinding untuk interior ,cat dinding untuk eksterior ,cat epoxy untuk lantai ,cat anti korosi untuk logam ,cat tembok Nippon / Dulux / Avian']
    }
  ]
}
</script>
EOT;
@endphp