import 'package:e_learning/home/categories.dart';
import 'package:flutter/material.dart';

class CategoryCardHomepage extends StatelessWidget {
  final String title;
  final String image_path;

  const CategoryCardHomepage({
    super.key,
    required this.title,
    required this.image_path,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // To Fix:-> This should only work on (See All) Button
        Navigator.push(context,MaterialPageRoute(builder: (context) => Categories()));
      },
      child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(vertical: 5),
        child: Container(
          decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade50,
          ),
          width: 75,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image_path,
                height: 70,),
                Text(title,
                style: TextStyle(
                  fontSize: 15
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}