import 'dart:async'; // Required for Timer
import 'package:e_learning/features/onboarding/page1.dart';
import 'package:flutter/material.dart';
// import 'package:e_learning/signup_screen.dart'; // Import your signup file here

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 1. Move to SignUpScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Page1()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFC62828), // Professional Red from your design
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 2. Add an Icon or Logo to make it look like a real app
            Icon(Icons.auto_stories, size: 80, color: Colors.white),
            SizedBox(height: 20),
            Text(
              "E Learning",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            Text(
              "Learn Smartly",
              style: TextStyle(
                color: Colors.white70, // Slightly faded for hierarchy
                fontSize: 16,
                letterSpacing: 1.2,
              ),
            ),
            SizedBox(height: 50),
            // 3. Loading indicator to show the app is starting
            CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            ),
          ],
        ),
      ),
    );
  }
}
