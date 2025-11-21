import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  final String imagePath; // Path untuk gambar PNG
  final String title;
  final VoidCallback onTap;

  const CategoryButton({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onTap();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        width: double.infinity, // Full width
        height: 120, // Tinggi card
        decoration: BoxDecoration(
          color: _isPressed 
              ? const Color(0xFFFFB3C6) 
              : Colors.white, 
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox( 
              width: 50,
              height: 50,
              child: widget.imagePath.isNotEmpty
                  ? Image.asset(
                      widget.imagePath,
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    )
                  : const Icon(
                      Icons.image,
                      size: 35,
                      color: Colors.grey,
                    ),
            ),
            const SizedBox(height: 12),
            // Text kategori
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}