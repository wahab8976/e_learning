import 'package:e_learning/library/available_in_library.dart';
import 'package:e_learning/library/history_in_library.dart';
import 'package:e_learning/library/waiting_in_library.dart';
import 'package:flutter/material.dart';


class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Library',
            style: TextStyle(color: Color(0xFFC62828), fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xFFC62828),
            labelColor: Color(0xFFC62828),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Available"),
              Tab(text: "Waiting"),
              Tab(text: "History"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const AvailableInLibrary(), // Tab 2: Available Books
            const WaitingBooksInLibrary(), // Tab 2: Waiting Books
            const HistoryBooksInLibrary()   // Tab 3: History
          ],
        ),
      ),
    );
  }
}
