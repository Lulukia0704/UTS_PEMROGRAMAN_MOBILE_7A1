import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/item_card.dart';
import '../screens/item_detail_screen.dart';

class ItemListScreen extends StatelessWidget {
  final String categoryName;

  const ItemListScreen({Key? key, required this.categoryName})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dapatkan lebar layar
    final screenWidth = MediaQuery.of(context).size.width;

    // Tentukan jumlah kolom berdasarkan lebar layar
    int crossAxisCount = 2; // Default untuk HP
    double childAspectRatio = 0.75;

    if (screenWidth < 600) {
      crossAxisCount = 2; // HP kecil
      childAspectRatio = 0.53;
    } else if (screenWidth < 900) {
      crossAxisCount = 3; // Tablet kecil
      childAspectRatio = 0.70;
    } else if (screenWidth < 1200) {
      crossAxisCount = 4; // Tablet besar
      childAspectRatio = 0.80;
    } else {
      crossAxisCount = 5; // Desktop
      childAspectRatio = 0.85;
    }

    return Scaffold(
      appBar: const AppHeader(title: '', showBackButton: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Kontainer 'ProductList'
            Container(
              color: const Color(0xFFE9E9E9),
              height: 30.0,
              alignment: Alignment.center,
              child: const Text(
                'ProductList',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),

            const SearchBarWidget(),

            // Grid responsif untuk item cards
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: GridView.count(
                crossAxisCount: crossAxisCount,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: screenWidth * 0.03,
                mainAxisSpacing: 12,
                childAspectRatio: childAspectRatio,
                children: [
                  // Item 1
                  ItemCard(
                    imagePath: 'assets/kitten.jpg',
                    title: 'Weruva Kitten Paté — Chicken Breast Formula',
                    price: 'Rp 24.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 85 g',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetailScreen(
                            imagePath: 'assets/kitten.jpg',
                            title:
                                'Weruva Kitten Paté — Chicken Breast Formula',
                            price: 'Rp 24.000',
                            originalPrice: 'Grain-free, Hydrating purée',
                            weight: '4.8 | 85 g',
                          ),
                        ),
                      );
                    },
                  ),

                  // Item 2
                  ItemCard(
                    imagePath: 'assets/kalengan.jpg',
                    title: 'Royal Canin Aging 12+ - Wet Food (Kaleng)',
                    price: 'Rp 28.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 85 g',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetailScreen(
                            imagePath: 'assets/kalengan.jpg',
                            title: 'Royal Canin Aging 12+ - Wet Food (Kaleng)',
                            price: 'Rp 28.000',
                            originalPrice: 'Grain-free, Hydrating purée',
                            weight: '4.8 | 85 g'
                          ),
                        ),
                      );
                    },
                  ),

                  // Item 3
                  ItemCard(
                    imagePath: 'assets/royalcanin.jpg',
                    title: 'Royal Canin Persian Kitten - Dry Food',
                    price: 'Rp 160.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 1 kg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetailScreen(
                             imagePath: 'assets/royalcanin.jpg',
                              title: 'Royal Canin Persian Kitten - Dry Food',
                              price: 'Rp 160.000',
                              originalPrice: 'Grain-free, Hydrating purée',
                              weight: '4.8 | 1 kg'
                          ),
                        ),
                      );
                    },
                  ),

                  // Item 4
                  ItemCard(
                    imagePath: 'assets/vivacats.jpg',
                    title: 'Viva Cats Chicken - Raw/Minced Wet Food',
                    price: 'Rp 45.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 454 g',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetailScreen(
                            imagePath: 'assets/vivacats.jpg',
                            title: 'Viva Cats Chicken - Raw/Minced Wet Food',
                            price: 'Rp 45.000',
                            originalPrice: 'Grain-free, Hydrating purée',
                            weight: '4.8 | 454 g',
                          ),
                        ),
                      );
                    },
                  ),

                  // Item 5
                  ItemCard(
                    imagePath: 'assets/wiskas.jpg',
                    title: 'Whiskas Pouch Tuna - Wet Food',
                    price: 'Rp 7.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 85 g',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetailScreen(
                            imagePath: 'assets/wiskas.jpg',
                            title: 'Whiskas Pouch Tuna - Wet Food',
                            price: 'Rp 7.000',
                            originalPrice: 'Grain-free, Hydrating purée',
                            weight: '4.8 | 85 g',
                          ),
                        ),
                      );
                    },
                  ),

                  // Item 6
                  ItemCard(
                    imagePath: 'assets/wiskess.jpg',
                    title:'Whiskas Meaty Selections - Chicken & Turkey Flavors (Dry Food)',
                    price: 'Rp 180.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 3 kg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ItemDetailScreen(
                             imagePath: 'assets/wiskess.jpg',
                              title:'Whiskas Meaty Selections - Chicken & Turkey Flavors (Dry Food)',
                              price: 'Rp 180.000',
                              originalPrice: 'Grain-free, Hydrating purée',
                              weight: '4.8 | 3 kg',
                          ),
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
