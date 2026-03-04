import 'package:flutter/material.dart';

class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book Cover Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/filosofi_teras.png', // Ensure this exists in assets
              height: 110,
              width: 75,
              fit: BoxFit.cover,
              // Fallback if image is missing to prevent crash on physical device
              errorBuilder: (context, error, stackTrace) => Container(
                height: 110, width: 75, color: Colors.grey[200],
                child: const Icon(Icons.book),
              ),
            ),
          ),
          const SizedBox(width: 15),

          // Book Info & Progress
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "FILOSOFI TERAS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Text(
                  "Henry Manampiring",
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                const SizedBox(height: 15),

                // Progress Section
                Row(
                  children: [
                    const Expanded(
                      child: LinearProgressIndicator(
                        value: 0.65, // 65% complete
                        backgroundColor: Color(0xFFEEEEEE),
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFC62828)),
                        minHeight: 6,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "65%",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]
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