
import 'package:expenz/constants/const.dart';
import 'package:flutter/material.dart';

class SharedScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;

  const SharedScreen({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset(imageUrl, width: 200, fit: BoxFit.cover),
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),

          Text(
            description,
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 50),

          
        ],
      ),
    );
  }
}
