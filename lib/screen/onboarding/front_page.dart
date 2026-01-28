import 'package:expenz/constants/colors.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/logo.png", width: 150, fit: BoxFit.cover),

        SizedBox(height: 5),

        Text(
          "Expenze",
          style: TextStyle(
            fontSize: 50,
            color: kMainColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
