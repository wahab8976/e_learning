import 'package:e_learning/profile/profile_info_build_helper.dart';
import 'package:flutter/material.dart';


class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Updated title to match the design username
        title: Row(
          children: [
            const Text(
              'Anastasha',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            // 2. Added the trophy icon seen in the design
            const Icon(Icons.emoji_events_outlined, color: Colors.orange, size: 22),
          ],
        ),
        // 3. Fixed 'icons.menu' syntax to 'Icons.menu'
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
      body: ProfileInfoBuildHelper(),
    );
  }
}
