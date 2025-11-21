import 'package:flutter/material.dart';
import '../widgets/app_header.dart'; 
import '../widgets/search_bar.dart'; 
import '../widgets/category_button.dart';
import 'item_list_screen.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            
            // Grid 3 kolom untuk card kategori
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 3, 
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.85,
                children: [
                  // Card 1 - Makanan Hewan (AKTIF - ke ItemListScreen)
                  CategoryButton(
                    imagePath: 'assets/icon1.png',
                    title: 'Makanan Hewan',
                    onTap: () {
                      // NAVIGASI KE ITEM LIST SCREEN
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
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Halaman belum tersedia'),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.orange,
                        ),
                      );
                    },
                  ),

                  // Card 3 - Aksesoris Hewan 
                  CategoryButton(
                    imagePath: 'assets/icon3.png',
                    title: 'Aksesoris Hewan',
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Halaman belum tersedia'),
                          duration: Duration(seconds: 2),
                          backgroundColor: Colors.orange,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}