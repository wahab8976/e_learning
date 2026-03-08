import 'package:e_learning/widgets/book_card_library.dart';
import 'package:flutter/material.dart';

class HistoryBooksInLibrary extends StatelessWidget {
  const HistoryBooksInLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Five dummy books with "History" status
    final List<Map<String, String>> historyBooks = [
      {'title': 'Filosofi Teras', 'author': 'Henry Manampiring', 'status': 'Times'},
      {'title': 'The Art of War', 'author': 'Sun Tzu', 'status': '2 Weeks ago'},
      {'title': 'MeinKampf', 'author': 'Austrian Painter', 'status': '1 Month ago'},
      {'title': 'Psychology of Money', 'author': 'Morgan Housel', 'status': 'Dec 2025'},
      {'title': 'Sapiens', 'author': 'Yuval Noah Harari', 'status': 'Oct 2025'},
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Updates count for History
              Text("${historyBooks.length} Books",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const Icon(Icons.tune),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              childAspectRatio: 0.65,
            ),
            itemCount: historyBooks.length,
            itemBuilder: (context, index) {
              return BookCardLibrary(
                title: historyBooks[index]['title']!,
                author: historyBooks[index]['author']!,
                imagePath: 'assets/images/history.jpg', // Keeping image same as requested
                statusText: historyBooks[index]['status']!,
              );
            },
          ),
        ),
      ],
    );
  }
}