import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String price;
  final String originalPrice;
  final String weight;
  final VoidCallback onTap;

  const ItemCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.weight,
    required this.onTap,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
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
        decoration: BoxDecoration(
          color: _isPressed 
              ? const Color(0xFFFFE5EC)
              : Colors.white,            
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color(0xFFFF69B4),
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar produk
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
              child: Container(
                height: 200,
                width: double.infinity,
                color: Colors.grey[200],
                child: widget.imagePath.isNotEmpty
                    ? Image.asset(
                        widget.imagePath,
                        fit: BoxFit.cover,
                      )
                    : const Icon(
                        Icons.image,
                        size: 80,
                        color: Colors.grey,
                      ),
              ),
            ),

            // Konten card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Judul produk
                  Text(
                    widget.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 3),

                  // Harga
                  Text(
                    widget.price,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE94B73),
                    ),
                  ),

                  const SizedBox(height: 2),

                  // Deskripsi/Original Price
                  Text(
                    widget.originalPrice,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.grey[600],
                    ),
                  ),

                  const SizedBox(height: 4),

                  // Footer dengan rating dan menu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Rating dan berat
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            widget.weight,
                            style: const TextStyle(
                              fontSize: 9,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                      // Menu icon (3 dots)
                      Icon(
                        Icons.more_horiz,
                        size: 16,
                        color: Colors.grey[700],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}