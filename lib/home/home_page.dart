import 'package:e_learning/widgets/category_card.dart';
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
      // 1. Removed 'const' from Scaffold to allow dynamic helper methods
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

            CategoryCard(title: "History", imagePath: 'assets/images/history.jpg')




          ],
        ),
      ),
    );
  }


}