import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart'; // Assuming `blackColor` is defined here

class ServiceCount extends StatelessWidget {
  final String serviceName;
  final bool showImage;
  final String date;

  ServiceCount({
    required this.serviceName,
    this.showImage = true,
    this.date = '',
  });

  @override
  Widget build(BuildContext context) {
    // Fixed sizes
    const double iconSize = 20.0; // Fixed icon size
    const double fontSize = 14.0; // Fixed font size

    return Row(
      children: [
        FittedBox(
          fit: BoxFit.contain,
          child: Text(
            serviceName,
            style: TextStyle(
              color: blackColor,
              fontFamily: "OxygenLight",
              fontSize: fontSize, // Fixed font size
            ),
          ),
        ),
        Expanded(
            child: SizedBox(
          width: 10,
        )),
        if (!showImage && date.isNotEmpty)
          Text(
            date,
            style: TextStyle(
              color: blackColor,
              fontFamily: "OxygenLight",
              fontSize: fontSize, // Fixed font size
            ),
          ),
        if (showImage) ...[
          Spacer(), // Use Spacer to push everything to the right
          Text(
            date.isNotEmpty ? date : '', // Show date if available
            style: TextStyle(
              color: blackColor,
              fontFamily: "OxygenLight",
              fontSize: fontSize, // Fixed font size
            ),
          ),
          Container(
            width: iconSize, // Fixed icon size
            height: iconSize, // Fixed icon size
            margin: const EdgeInsets.only(
                left: 8.0), // Ensure some space between the date and the image
            child: Image.asset(
              "Assets/Icons/Group 81.png",
              width: iconSize, // Fixed icon size
              height: iconSize, // Fixed icon size
            ),
          ),
        ] else if (date
            .isEmpty) // If no date and showImage is false, add a spacer to align any following elements to the end
          Spacer(),
      ],
    );
  }
}
