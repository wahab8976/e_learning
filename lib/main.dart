import 'package:e_learning/home/home_page.dart';
import 'package:e_learning/library/library.dart';
import 'package:e_learning/profile/user_profile.dart';
import 'package:e_learning/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iJogja E-Learning',
      theme: ThemeData(
        // FIXED: Added ColorScheme before .fromSeed
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFC62828)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}





class MainScreenWrapper extends StatefulWidget {
  const MainScreenWrapper({super.key});

  @override
  State<MainScreenWrapper> createState() => _MainScreenWrapperState();
}


class _MainScreenWrapperState extends State<MainScreenWrapper> {
  int selected_index = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const Library(),
    const Center(child: Text("Notifications")),
    const UserProfile(),
  ];

  void on_tap(int value) {
    setState(() {
      selected_index = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selected_index,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selected_index,
        onTap: on_tap,
        selectedItemColor: const Color(0xFFC62828),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.import_contacts), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }
}