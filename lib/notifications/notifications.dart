import 'package:e_learning/widgets/notification_message.dart';
import 'package:flutter/material.dart';


class Notifications extends StatelessWidget {
  Notifications({super.key});

  // A simple List of Maps instead of a Class
  final List<Map<String, dynamic>> notification_data = [
    {
      'name': 'Angelica Rain',
      'msg': '4+ new message',
      'time': '20 m',
      'img': 'assets/images/user.png',
      'unread': true,
    },
    {
      'name': 'Miracle Dias',
      'msg': '11+ new message',
      'time': '45 m',
      'img': 'assets/images/user.png',
      'unread': true,
    },
    {
      'name': 'Adison George',
      'msg': 'You must read this books Ana',
      'time': '12.30',
      'img': 'assets/images/user.png',
      'unread': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Notifications',
          style: TextStyle(color: Color(0xFFC62828), fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: notification_data.length,
        itemBuilder: (context, index) {
          // Pull data for the current index
          final item = notification_data[index];

          // Return your reusable widget
          return NotificationMessage(
            senderName: item['name'],
            messageContent: item['msg'],
            timeAgo: item['time'],
            profileImagePath: item['img'],
            isUnread: item['unread'],
          );
        },
      ),
    );
  }
}