import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ServicesForYouText extends StatelessWidget {
  const ServicesForYouText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
  text: TextSpan(
    children: [
      TextSpan(
        text: 'Services for ',
        style: TextStyle(
          color: blackColor,
          fontFamily: "Stylish",
          fontSize: 22,
        ),
      ),
      TextSpan(
        text: 'you!',
        style: TextStyle(
          color: darkBlueColor,
          fontFamily: "CookieRegular",
          fontSize: 30,
        ),
      ),
    ],
  ),
),
    );
  }
}