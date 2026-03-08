import 'package:flutter/material.dart';

class ProfileInfoBuildHelper extends StatelessWidget {
  const ProfileInfoBuildHelper({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20),
      // This is main UI Column
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // This is Followers Stat Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
            children: [
              CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/user.png'),
                ),

              Spacer(),
              BuildStatsItem('Reads',21),
              BuildStatsItem('Followers',221),
              BuildStatsItem('Following',81),
            ],
          ),

          // Display Name
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Abdul Wahab',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),
              ),
          ),

          // About
          Text('Book Worm by day, dreamer by night',
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14
                ),
              ),


          // Buttons Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC62828),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text('Edit Profile', style: TextStyle(fontSize: 14)),
                  ),
                ),
                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC62828),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const Text('Share Profile', style: TextStyle(fontSize: 14)),
                  ),
                ),
                const SizedBox(width: 10),

                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFC62828),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_add_alt_1, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
          )
        ],

      ),

    );
  }

  // Reusable Stats Widget Builder
  Widget BuildStatsItem(String label,int count){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$count',
        style: TextStyle(
          color: Color(0xFFC62828),
          fontWeight: FontWeight.w600
        ),
        ),
        Text('$label'),
      ],
    );
  }
}
