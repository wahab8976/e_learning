import 'package:flutter/material.dart';

class ProfileResultCard extends StatelessWidget {
  final String name;
  final String username;
  final String role; // e.g., Bookworm, Librarian
  final String bookCount;
  final String imagePath;

  const ProfileResultCard({
    super.key,
    required this.name,
    required this.username,
    required this.role,
    required this.bookCount,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // User Avatar
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(width: 15),

          // User Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  name,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.stars, size: 14, color: Colors.orange), // Role icon
                    const SizedBox(width: 4),
                    Text(
                      "$role • $bookCount read",
                      style: const TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Follow Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFC62828),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              elevation: 0,
            ),
            child: const Text("Follow", style: TextStyle(fontSize: 12)),
          ),
        ],
      ),
    );
  }
}