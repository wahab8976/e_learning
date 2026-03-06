import 'package:e_learning/widgets/profile_result_card.dart';
import 'package:flutter/material.dart';

class ProfileSearchResults extends StatelessWidget {
  const ProfileSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProfileResultCard(
          username: "aglc.Rain",
          name: "Angelica Rain",
          role: "Bookworm",
          bookCount: "67 books",
          imagePath: "assets/images/user.png",
        ),
        ProfileResultCard(
          username: "angelina_",
          name: "Jordyn Angeline",
          role: "Librarian",
          bookCount: "23 books",
          imagePath: "assets/images/user.png",
        ),
        ProfileResultCard(
          username: "stephany_",
          name: "Angelina Stephany",
          role: "Librarian",
          bookCount: "13 books",
          imagePath: "assets/images/user.png",
        ),
        ProfileResultCard(
          username: "matthew09_",
          name: "Angel Matthew",
          role: "Librarian",
          bookCount: "15 books",
          imagePath: "assets/images/user.png",
        ),
      ],
    );
  }
}
