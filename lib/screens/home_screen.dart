import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/category_button.dart';
import 'item_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dapatkan lebar layar
    final screenWidth = MediaQuery.of(context).size.width;

    // Tentukan jumlah kolom berdasarkan lebar layar
    int crossAxisCount = 3; // Default untuk tablet/desktop
    if (screenWidth < 600) {
      crossAxisCount = 3; // Untuk HP kecil
    } else if (screenWidth < 900) {
      crossAxisCount = 3; // Untuk HP besar/tablet kecil
    } else {
      crossAxisCount = 4; // Untuk tablet besar/desktop
    }

    return Scaffold(
      appBar: const AppHeader(title: ''),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Kontainer 'Kategori'
            Container(
              color: const Color(0xFFE9E9E9),
              height: 30.0,
              alignment: Alignment.center,
              child: const Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),

            const SearchBarWidget(),

            // Grid responsif untuk card kategori
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.04, // 4% dari lebar layar
              ),
              child: GridView.count(
                crossAxisCount: crossAxisCount, // Jumlah kolom dinamis
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: screenWidth * 0.03, // 3% dari lebar layar
                mainAxisSpacing: 12,
                childAspectRatio: 0.85,
                children: [
                  // Card 1 - Makanan Hewan (AKTIF - ke ItemListScreen)
                  CategoryButton(
                    imagePath: 'assets/icon1.png',
                    title: 'Makanan Hewan',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemListScreen(
                            categoryName: 'Makanan Hewan',
                          ),
                        ),
                      );
                    },
                  ),

                  // Card 2 - Peralatan Hewan
                  CategoryButton(
                    imagePath: 'assets/icon2.png',
                    title: 'Peralatan Hewan',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemListScreen(
                            categoryName: 'Peralatan Hewan',
                          ),
                        ),
                      );
                    },
                  ),

                  // Card 3 - Aksesoris Hewan
                  CategoryButton(
                    imagePath: 'assets/icon3.png',
                    title: 'Aksesoris Hewan',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemListScreen(
                            categoryName: 'Aksesoris Hewan',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: screenWidth * 0.05), // 5% dari lebar layar
          ],
        ),
      ),
    );
  }
}
