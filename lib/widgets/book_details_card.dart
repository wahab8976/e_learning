import 'package:flutter/material.dart';

class BookDetailsCard extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String category;
  final String reads;
  final String comments;
  final String waiting;

  const BookDetailsCard({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.category,
    required this.reads,
    required this.comments,
    required this.waiting,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade200), // Subtle border from design
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Book Cover with Rounded Corners
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imagePath,
              height: 110,
              width: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),

          // 2. Book Metadata
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  author,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
                const SizedBox(height: 8),

                // Category Tag
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFC62828), // iJogja Brand Red
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    category,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
                const SizedBox(height: 12),

                // 3. Stats Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStat(Icons.visibility_outlined, reads),
                    _buildStat(Icons.chat_bubble_outline, comments),
                    _buildStat(Icons.person_outline, waiting, color: Colors.red),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for the small icons
  Widget _buildStat(IconData icon, String value, {Color color = Colors.grey}) {
    return Row(
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 4),
        Text(
          value,
          style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}