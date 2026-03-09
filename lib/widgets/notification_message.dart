import 'package:flutter/material.dart';

class NotificationMessage extends StatelessWidget {

  final String senderName;
  final String messageContent; // e.g., "4+ new messages"
  final String timeAgo;        // e.g., "20m"
  final String profileImagePath;
  final bool isUnread;         // To toggle the red dot

  const NotificationMessage({
    super.key,
    required this.senderName,
    required this.messageContent,
    required this.timeAgo,
    required this.profileImagePath,
    this.isUnread = false, // Default to read
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          // Avatar with Stack for unread dot
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(profileImagePath),
              ),
              if (isUnread)
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC62828),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(width: 20),

          // Text Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  senderName,
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  '$messageContent . $timeAgo',
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                )
              ],
            ),
          ),

          // Trailing Indicator
          if (isUnread)
            const Icon(
              Icons.circle,
              size: 10,
              color: Color(0xFFC62828),
            ),
        ],
      ),
    );
  }
}