import 'package:e_learning/profile/profile_info_build_helper.dart';
import 'package:e_learning/widgets/book_card.dart';
import 'package:flutter/material.dart';


class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // Updated title to match the design username
        title: Row(
          children: [
            const Text(
              'Anastasha',
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            // 2. Added the trophy icon seen in the design
            const Icon(Icons.emoji_events_outlined, color: Colors.orange, size: 22),
          ],
        ),
        //  Fixed 'icons.menu' syntax to 'Icons.menu'
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ProfileInfoBuildHelper(),

              TabBar(
                indicatorColor: Color(0xFFC62828),
                labelColor: Color(0xFFC62828),
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: "About"),
                  Tab(text: "Saved"),
                ],
              ),

              Expanded(
                child: TabBarView(children: [

                  // About Me
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      // Enabling "TextArea" behavior
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      // Styling
                      decoration: InputDecoration(
                        hintText: "Tell us about yourself...",
                        labelStyle: const TextStyle(color: Color(0xFFC62828)),
                        alignLabelWithHint: true,
                      ),
                      // Controller
                      controller: TextEditingController(text: "Always on the hunt for my next literary adventure..."),
                    ),
                  ),

                  // Saved Books
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 10,vertical: 20),
                        child:
                        Center(
                          child: Wrap(
                          children: [
                            BookCard(title: 'Atomic Habits', author: 'James Clear', imagePath: 'assets/images/book.jpg'),
                            BookCard(title: 'The Tipping Point', author: 'Malcolm Gladwell', imagePath: 'assets/images/book.jpg'),
                            BookCard(title: 'MeinKampf', author: 'Adolf Hitler', imagePath: 'assets/images/book.jpg'),
                            BookCard(title: 'Deep Work', author: 'Cal Newport', imagePath: 'assets/images/book.jpg'),
                          ],
                          ),
                        )
                    ),
                  )

                ]),
              )

            ],
          ),
        ),
      )
      );
  }
}
