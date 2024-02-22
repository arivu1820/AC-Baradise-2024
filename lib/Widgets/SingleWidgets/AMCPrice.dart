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
        const IconTheme(
          data: IconThemeData(
            size: 20.0, // Set the size to 1 pixel
          ),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: darkBlueColor,
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}
