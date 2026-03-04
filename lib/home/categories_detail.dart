import 'package:e_learning/widgets/book_details_card.dart';
import 'package:e_learning/widgets/build_chip.dart';
import 'package:flutter/material.dart';

class CategoriesDetail extends StatelessWidget {
  const CategoriesDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Using an icon for the back button to keep it clean
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Philosophy'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text('123k books', style: TextStyle(color: Colors.grey, fontSize: 12)),
            const SizedBox(height: 15),

            //Horizontal Scrollable Chips
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BuildChip(label: 'All Books', isSelected: true, onSelected: (val) {}),
                  const SizedBox(width: 10),
                  BuildChip(label: 'Popular', isSelected: false, onSelected: (val) {}),
                  const SizedBox(width: 10),
                  BuildChip(label: 'Available', isSelected: false, onSelected: (val) {}),
                  const SizedBox(width: 10),
                  BuildChip(label: 'Waiting List', isSelected: false, onSelected: (val) {}),
                ],
              ),
            ),

            const SizedBox(height: 25),

            Column(
              children: [
                BookDetailsCard(
                  title: "FILOSOFI TERAS",
                  author: "Henry Manampiring",
                  imagePath: "assets/images/book.jpg",
                  category: "philosophy",
                  reads: "316k",
                  comments: "300",
                  waiting: "8",
                ),
                BookDetailsCard(
                  title: "Filsafat Periode Socrates",
                  author: "Frederick Copleston",
                  imagePath: "assets/images/book.jpg",
                  category: "philosophy",
                  reads: "316k",
                  comments: "300",
                  waiting: "8",
                ),
                // Add more cards here...
              ],
            )

          ],
        ),
      ),
    );
  }
}