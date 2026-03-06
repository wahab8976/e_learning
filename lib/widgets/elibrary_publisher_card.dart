import 'package:flutter/material.dart';

class ElibraryPublisherCard extends StatelessWidget {
  final String name;
  final String bookCount;
  final String imagePath;

  const ElibraryPublisherCard({
    super.key,
    required this.name,
    required this.bookCount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade100), // Subtle border
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 1. Publisher Logo
          Image.asset(imagePath, height: 80, width: 80),
          const SizedBox(height: 15),

          // 2. Publisher Name
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 8),

          // 3. Book Count Stat
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.bookmark, size: 14, color: Color(0xFFC62828)),
              const SizedBox(width: 4),
              Text(
                bookCount,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}