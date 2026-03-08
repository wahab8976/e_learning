import 'package:flutter/material.dart';

class BookCardLibrary extends StatelessWidget {
  final String title;
  final String author;
  final String imagePath;
  final String statusText;
  final IconData statusIcon;

  const BookCardLibrary({
    super.key,
    required this.title,
    required this.author,
    required this.imagePath,
    required this.statusText,
    this.statusIcon = Icons.access_time_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Book Cover Image
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Book Title
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                //Author Name
                Text(
                  author,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),
                ),
                const SizedBox(height: 8),
                //Status Footer (Time/Wait list)
                Row(
                  children: [
                    Icon(statusIcon, size: 12, color: const Color(0xFFC62828)),
                    const SizedBox(width: 4),
                    Text(
                      statusText,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}