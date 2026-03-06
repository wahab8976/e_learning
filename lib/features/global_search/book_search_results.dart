import 'package:e_learning/widgets/book_details_card.dart';
import 'package:flutter/material.dart';

class BookSearchResults extends StatelessWidget {
  const BookSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BookDetailsCard(title: 'MeinKampf', author: 'Austrian Painter', imagePath: 'assets/images/history.jpg', category: 'History', reads: '10', comments: '2',waiting: '0'),
          BookDetailsCard(
            title: 'Filosofi Teras',
            author: 'Henry Manampiring',
            imagePath: 'assets/images/history.jpg',
            category: 'Philosophy',
            reads: '316k',
            comments: '300',
            waiting: '8',
          ),
          BookDetailsCard(
            title: 'Love',
            author: 'Ade Aprilia',
            imagePath: 'assets/images/history.jpg',
            category: 'Fiction',
            reads: '316k',
            comments: '300',
            waiting: '8',
          ),
          BookDetailsCard(
            title: 'A Lovely Thing Called Hope',
            author: 'Karimatul Jannah',
            imagePath: 'assets/images/history.jpg',
            category: 'Fiction',
            reads: '316k',
            comments: '300',
            waiting: '8',
          ),
          BookDetailsCard(
            title: 'How to Love',
            author: 'Yoon Hong Gyun',
            imagePath: 'assets/images/history.jpg',
            category: 'Self-Improvement',
            reads: '316k',
            comments: '300',
            waiting: '8',
          ),
          BookDetailsCard(
            title: 'The Love Detectives',
            author: 'Agatha Christie',
            imagePath: 'assets/images/history.jpg',
            category: 'Fiction',
            reads: '316k',
            comments: '300',
            waiting: '8',
          ),
        ],
      ),
    );
  }
}
