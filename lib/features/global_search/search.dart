import 'package:e_learning/features/global_search/book_search_results.dart';
import 'package:e_learning/features/global_search/e_library_search_results.dart';
import 'package:e_learning/features/global_search/profile_search_results.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  final String? initialQuery;

  const Search({
    super.key,
    this.initialQuery
  });

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  late TextEditingController search_text_forwarded;

  @override
  void initState() {
    super.initState();
    // Initial value from the widget, not the state
    search_text_forwarded = TextEditingController(text: widget.initialQuery);
  }

  @override
  void dispose() {
    // Clean up memory
    search_text_forwarded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Search',
            style: TextStyle(color: Color(0xFFC62828), fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xFFC62828), 
            labelColor: Color(0xFFC62828),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Book"),
              Tab(text: "E-Library"),
              Tab(text: "Profile"),
            ],
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: search_text_forwarded,
                decoration: InputDecoration(
                  hintText: "Search for book, e-library or profile",
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                  fillColor: const Color(0xFFF5F5F5),
                  filled: true,
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.cancel_outlined, color: Colors.grey),
                    onPressed: () => search_text_forwarded.clear(),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                '4 Results',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
              
              Expanded(child: TabBarView(children: [
                BookSearchResults(),
                ELibrarySearchResults(),
                ProfileSearchResults(),
              ]))

            ],
          ),
        ),
      ),
    );
  }
}