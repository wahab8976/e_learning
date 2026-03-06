import 'package:e_learning/widgets/elibrary_publisher_card.dart';
import 'package:flutter/material.dart';

class ELibrarySearchResults extends StatelessWidget {
  const ELibrarySearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          ElibraryPublisherCard(
            name: "Lionel Books Publisher",
            bookCount: "1.32k books",
            imagePath: "assets/images/publishers.jpg",
          ),
          ElibraryPublisherCard(
            name: "Justin George Publisher",
            bookCount: "1.2k books",
            imagePath: "assets/images/publishers.jpg",
          ),
          ElibraryPublisherCard(
            name: "Charlie Botosh Books",
            bookCount: "44 books",
            imagePath: "assets/images/publishers.jpg",
          ),
          ElibraryPublisherCard(
            name: "Books Publisher",
            bookCount: "55 books",
            imagePath: "assets/images/publishers.jpg",
          ),
          ElibraryPublisherCard(
            name: "Sunflowers Publishing",
            bookCount: "44 books",
            imagePath: "assets/images/publishers.jpg",
          ),
          ElibraryPublisherCard(
            name: "Marley Lubin Publishing",
            bookCount: "55 books",
            imagePath: "assets/images/publishers.jpg",
          ),
        ],
      ),
    );
  }
}
