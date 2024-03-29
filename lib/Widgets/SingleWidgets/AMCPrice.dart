import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class AMCPrice extends StatelessWidget {
  const AMCPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final String name = "₹5999";
    return Row(
      children: [
        Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: "LexendMedium",
                color: blackColor,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: "LexendRegular",
                  color: black50Color,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: black50Color, // Set the color to black
                  decorationStyle: TextDecorationStyle.solid),
            ),
          ],
        ),
        const SizedBox(
          width: 5,
        ),
        IconTheme(
          data: IconThemeData(
            size: 20.0, // Set the size to 20 pixels
          ),
          child: Image.asset(
            'Assets/Icons/ArrowRight.png', // Replace with the correct path to your image asset
            width: 10.0, // Set the width to match the desired size
            height: 20.0, // Set the height to match the desired size
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
