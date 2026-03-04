import 'package:flutter/material.dart';
import '../widgets/category_tile.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for book, e-library or profile",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.cancel_outlined),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Category",
                style: TextStyle(
                  color: Color(0xFFC62828),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // 2. Category Grid
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                childAspectRatio: 2.2, // Keeps tiles wide and slim
                children: const [
                  CategoryTile(title: "Action & Adventure", imagePath: "assets/images/history.jpg"),
                  CategoryTile(title: "Antiques & Collectibles", imagePath: "assets/images/history.jpg"),
                  CategoryTile(title: "Business & Economics", imagePath: "assets/images/history.jpg"),
                  CategoryTile(title: "Comics", imagePath: "assets/images/history.jpg"),
                  CategoryTile(title: "Computer", imagePath: "assets/images/history.jpg"),
                  CategoryTile(title: "Design", imagePath: "assets/images/history.jpg"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}