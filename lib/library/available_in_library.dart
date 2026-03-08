import 'package:e_learning/widgets/book_card_library.dart';
import 'package:flutter/material.dart';

class AvailableInLibrary extends StatelessWidget {
  const AvailableInLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data matching
    final List<Map<String, String>> books = [
      {'title': 'The Art of War', 'author': 'Sun Tzu', 'status': '3 days'},
      {'title': 'The Journey to West', 'author': 'Sun Wukong', 'status': 'Today'},
      {'title': 'Filosofi Teras', 'author': 'Henry Manampiring', 'status': 'Today'},
      {'title': 'Love', 'author': 'Ade Aprilia', 'status': '3 days'},
    ];

    return Column(
      children: [
        // "Books" count and filter
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${books.length} Books",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const Icon(Icons.tune), // Filter icon
            ],
          ),
        ),
        // GridView for the 2-column layout
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 columns like the design
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.65,
            ),
            itemCount: books.length,
            itemBuilder: (context, index) {
              return BookCardLibrary(
                title: books[index]['title']!,
                author: books[index]['author']!,
                imagePath: 'assets/images/history.jpg',
                statusText: books[index]['status']!,
              );
            },
          ),
        ),
      ],
    );
  }
}