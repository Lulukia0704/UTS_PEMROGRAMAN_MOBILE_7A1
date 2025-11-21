import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton; 

  const AppHeader({
    Key? key, 
    required this.title,
    this.showBackButton = false, // ← Default false (tidak ada tombol back)
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget logoWidget = Image.asset(
      'assets/logobaru.png',
      height: 40,
      fit: BoxFit.fitHeight,
    );

    return AppBar(
      automaticallyImplyLeading: false, // ← Nonaktifkan default back button
      backgroundColor: const Color(0xFFE94B73),
      toolbarHeight: 80,
      title: logoWidget,
      centerTitle: true,
      
      // ← TOMBOL BACK PUTIH DI KIRI
      leading: showBackButton
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white, 
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context); // ← Kembali ke halaman sebelumnya
              },
            )
          : null, // ← Jika false, tidak ada tombol
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}