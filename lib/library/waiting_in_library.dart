import 'package:e_learning/widgets/book_card_library.dart';
import 'package:flutter/material.dart';

class WaitingBooksInLibrary extends StatelessWidget {
  const WaitingBooksInLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Five dummy books with "Waiting" status as per your design
    final List<Map<String, String>> waitingBooks = [
      {'title': 'The Art of War', 'author': 'Sun Tzu', 'status': '3 List'},
      {'title': 'Filsafat Socrates', 'author': 'Frederick C.', 'status': '8 List'},
      {'title': 'Atomic Habits', 'author': 'James Clear', 'status': '12 List'},
      {'title': 'Deep Work', 'author': 'Cal Newport', 'status': '5 List'},
      {'title': 'The Love Detective', 'author': 'Agatha Christie', 'status': '2 List'},
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Dynamic text based on the 5 books
              Text("${waitingBooks.length} Books",
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
            itemCount: waitingBooks.length,
            itemBuilder: (context, index) {
              return BookCardLibrary(
                title: waitingBooks[index]['title']!,
                author: waitingBooks[index]['author']!,
                imagePath: 'assets/images/history.jpg', // Keep image same as requested
                statusText: waitingBooks[index]['status']!,
              );
            },
          ),
        ),
      ],
    );
  }
}