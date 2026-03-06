import 'package:e_learning/widgets/book_card.dart';
import 'package:e_learning/widgets/category_card_homepage.dart';
import 'package:e_learning/widgets/continue_reading.dart';
import 'package:e_learning/widgets/homepage_header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomepageHeader(),
            ContinueReadingCard(),

            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 15),
              child: Text("Category",
              style: TextStyle(
                color:Color(0xFFC62828),
                fontSize: 18,
                fontWeight: FontWeight(600),
              ),),
            ),

            Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 15),
                child: Center(
                  child: Wrap(
                    spacing: 15,
                    children: [
                      CategoryCardHomepage(title: "History", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "Action & Adventure", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "Sci-Fi", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "Sci-Fi", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "Sci-Fi", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "Sci-Fi", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "Sci-Fi", image_path: 'assets/images/history.jpg'),
                      CategoryCardHomepage(title: "See All", image_path: 'assets/images/history.jpg'),

                    ],
                  ),
                ),
            ),

            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20,vertical: 15),
              child: Text("Recommended Books",
                style: TextStyle(
                  color:Color(0xFFC62828),
                  fontSize: 18,
                  fontWeight: FontWeight(600),
                ),),
            ),

            SizedBox(
              height: 260,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    BookCard(title: 'Atomic Habits', author: 'James Clear', imagePath: 'assets/images/book.jpg'),
                    BookCard(title: 'The Tipping Point', author: 'Malcolm Gladwell', imagePath: 'assets/images/book.jpg'),
                    BookCard(title: 'MeinKampf', author: 'Adolf Hitler', imagePath: 'assets/images/book.jpg'),
                    BookCard(title: 'Deep Work', author: 'Cal Newport', imagePath: 'assets/images/book.jpg'),
                  ],
                ),
              ),
            ),



            SizedBox(
              height: 50,
            )


          ],
        ),
      ),
    );
  }


}