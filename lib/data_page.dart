class DataPage {
  String nama;
  String deskripsi;
  String type;
  String imagessets;
  String harga;

  DataPage ({
    required this.nama,
    required this.deskripsi,
    required this.type,
    required this.imagessets,
    required this.harga,
  });
}

var DataPagelist = [
  DataPage(
    nama: 'Kamera',
    deskripsi: 'Canon 5DS dan 5DS R adalah kamera DSLR yang mengusung sensor 50.6 MP, menawarkan resolusi tinggi untuk detail yang luar biasa. Dikenal untuk kemampuan menangkap gambar tajam, kedua model ini sangat ideal untuk fotografi lanskap, potret, dan produk. Perbedaan utama antara keduanya adalah bahwa 5DS R memiliki fitur low-pass filter yang dinonaktifkan, memungkinkan pengguna untuk menjelajahi detail lebih mendalam. Kualitas build yang kokoh dan performa autofocus yang cepat menjadikan keduanya pilihan utama bagi fotografer profesional yang mencari hasil ultimate. Apakah Anda tertarik dengan fitur spesifik lainnya?',
    type: 'Canon 5DS and 5DS R Have 50.6 MP Sensors',
    imagessets: 'img/kamera.jpg',
    harga: 'Rp.55.000.000',
  ),
  DataPage(
    nama: 'Leptop',
    deskripsi: 'Dell XPS 13 9315 adalah laptop premium yang menggabungkan desain elegan dengan performa tinggi. Ditenagai oleh prosesor Intel Core i5-1230U, laptop ini menawarkan kecepatan dan efisiensi untuk berbagai kebutuhan komputasi. Layar 13.4 inci dengan resolusi 1920x1200 dan tingkat kecerahan 500 nit memastikan tampilan yang tajam dan jelas, ideal untuk bekerja di luar ruangan.',
    type: 'Dell XPS 13 9315',
    imagessets: 'img/leptop.jpg',
    harga: 'Rp.25.000.000',
  ),
  DataPage(
    nama: 'Televisi',
    deskripsi: 'Televisi Samsung 50" 4K Serie 6 adalah pilihan ideal untuk pengalaman menonton yang memukau. Dengan resolusi 4K UHD, setiap detail gambar tampak jelas dan tajam, menjadikan film, acara TV, dan game lebih hidup. Teknologi HDR (High Dynamic Range) meningkatkan kontras dan warna, memberikan tampilan yang lebih realistis.',
    type: 'TELEVISI?N SAMSUNG 50 4K SERIE 6',
    imagessets: 'img/televisi.png',
    harga: 'Rp.5.000.000'   
  ),
];