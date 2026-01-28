import 'package:expenz/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColor;
  final String buttonName;
  const CustomButton({
    super.key,
    required this.buttonColor,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0, -0.75),
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(40),
      ),

      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: kWhite,
          ),
        ),
      ),
    );
  }
}
