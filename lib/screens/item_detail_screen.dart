import 'package:flutter/material.dart';
import '../widgets/app_header.dart';

class ItemDetailScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final String originalPrice;
  final String weight;

  const ItemDetailScreen({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.weight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: '', showBackButton: true),//tombol back aktif
      body: Column(
        children: [
          // Kontainer 'ProductDetail'
          Container(
            color: const Color(0xFFE9E9E9),
            height: 30.0,
            alignment: Alignment.center,
            child: const Text(
              'ProductDetail',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),

          // Konten yang bisa di-scroll
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gambar produk
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: const Color(0xFFFFF8E1),
                    child: imagePath.isNotEmpty
                        ? Image.asset(
                            imagePath,
                            fit: BoxFit.contain,
                          )
                        : const Icon(
                            Icons.image,
                            size: 100,
                            color: Colors.grey,
                          ),
                  ),

                  // Detail produk
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Nama produk
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Harga
                        Text(
                          price,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE94B73),
                          ),
                        ),

                        const SizedBox(height: 4),

                        // Deskripsi singkat
                        Text(
                          originalPrice,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),

                        const SizedBox(height: 4),

                        // Rating dan berat
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              weight,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // Deskripsi lengkap
                        const Text(
                          'Deskripsi :',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          'Makanan basah premium khusus anak kucing dengan tekstur paté lembut yang mudah dimakan dan dicerna. Menggunakan daging ayam berkualitas tinggi dalam purée yang menghidrasi, membantu memenuhi kebutuhan nutrisi kitten dalam masa tumbuh kembang.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),

                        const SizedBox(height: 16),

                        const Text(
                          'Keunggulan Produk:',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          '• Menggunakan chicken breast asli\n'
                          '• Tekstur paté lembut, ideal untuk kitten\n'
                          '• Grain-free, gluten-free, dan carrageenan-free\n'
                          '• Formula lembut yang mendukung pencernaan sehat\n'
                          '• Kaya kelembapan untuk membantu menjaga hidrasi\n'
                          '• Cocok untuk kitten semua ras\n'
                          '• Tanpa bahan pengawet dan pewarna buatan',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            height: 1.8,
                          ),
                        ),

                        const SizedBox(height: 16),

                        const Text(
                          'Cocok Untuk:',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          '✔ Anak kucing usia 1–12 bulan\n'
                          '✔ Kitten yang membutuhkan makanan bertekstur lembut\n'
                          '✔ Kitten yang sensitif terhadap biji-bijian',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                            height: 1.8,
                          ),
                        ),

                        const SizedBox(height: 16),

                        const Text(
                          'Berat Bersih:',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        const SizedBox(height: 4),

                        const Text(
                          '85g (3 oz)',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 24),

                        // Divider
                        const Divider(thickness: 1),

                        const SizedBox(height: 16),

                        // Button Beri Rating dan Komentar
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            onPressed: () {
                              // Tampilkan notifikasi halaman belum tersedia
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Fitur rating dan komentar belum tersedia'),
                                  duration: Duration(seconds: 2),
                                  backgroundColor: Colors.orange,
                                ),
                              );
                            },
                            icon: const Icon(
                              Icons.rate_review,
                              color: Color(0xFFE94B73),
                            ),
                            label: const Text(
                              'Beri Rating dan Komentar',
                              style: TextStyle(
                                color: Color(0xFFE94B73),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(0xFFE94B73),
                                width: 2,
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 80), // Space untuk bottom bar
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom bar FIXED (Cart & Buy buttons)
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Button Cart
                Expanded(
                  flex: 1,
                  child: OutlinedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Fitur keranjang belum tersedia'),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.orange,
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Color(0xFFE94B73),
                        width: 2,
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Color(0xFFE94B73),
                      size: 24,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                // Button Buy
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Fitur pembelian belum tersedia'),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.orange,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE94B73),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Beli Sekarang',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}