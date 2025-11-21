import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/item_card.dart';
import '../screens/item_detail_screen.dart';

class ItemListScreen extends StatelessWidget {
  final String categoryName;

  const ItemListScreen({Key? key, required this.categoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppHeader(title: '', showBackButton: true),//tombol back aktif
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

            // Grid untuk item cards
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.75, 
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
                          builder: (context) => const ItemDetailScreen( // ← Harus ada ini
                            imagePath: 'assets/kitten.jpg',
                            title: 'Weruva Kitten Paté — Chicken Breast Formula',
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
                    imagePath: 'assets/kalengan.jpg', // Kosongkan untuk diisi nanti
                    title: 'Royal Canin Aging 12+ - Wet Food (Kaleng)',
                    price: 'Rp 28.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 85 g',
                    onTap: () {
                      
                    },
                  ),

                  // Item 3
                  ItemCard(
                    imagePath: 'assets/royalcanin.jpg', // Kosongkan untuk diisi nanti
                    title: 'Royal Canin Persian Kitten - Dry Food',
                    price: 'Rp 160.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 1 kg',
                    onTap: () {
                      
                    },
                  ),

                  // Item 4
                  ItemCard(
                    imagePath: 'assets/vivacats.jpg', // Kosongkan untuk diisi nanti
                    title: 'Viva Cats Chicken - Raw/Minced Wet Food',
                    price: 'Rp 45.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 454 g',
                    onTap: () {
                      
                    },
                  ),

                  // Item 5
                  ItemCard(
                    imagePath: 'assets/wiskas.jpg', // Kosongkan untuk diisi nanti
                    title: 'Whiskas Pouch Tuna - Wet Food',
                    price: 'Rp 7.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 85 g',
                    onTap: () {
                      
                    },
                  ),

                  // Item 6
                  ItemCard(
                    imagePath: 'assets/wiskess.jpg', // Kosongkan untuk diisi nanti
                    title: 'Whiskas Meaty Selections - Chicken & Turkey Flavors (Dry Food)',
                    price: 'Rp 180.000',
                    originalPrice: 'Grain-free, Hydrating purée',
                    weight: '4.8 | 3 kg',
                    onTap: () {
                      
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