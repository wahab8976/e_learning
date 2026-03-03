import 'package:e_learning/features/onboarding/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              'assets/images/onboard_1.svg',
              height: 250,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 40),
            const Text(
              "Enjoy the World of Reading and Sharing Together",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC62828),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Discover thousands of books and meet your book bestie!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
                height: 1.5,
              ),
            ),

            const Spacer(),

            // Bottom Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton( // Styled as "Back"
                  onPressed: () {},
                  child: const Text("Back"),
                ),
                ElevatedButton( // Styled as "Next"
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Page2()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFC62828),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Next"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}