import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

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
    return Row(
      children: [
        Expanded(
          child: Text(
            serviceName,
            style: TextStyle(
              color: blackColor, // Assuming `blackColor` is a color variable
              fontFamily: "OxygenLight",
              fontSize: 14,
            ),
          ),
        ),
        Expanded(child: SizedBox(width: 10,)),
        if (!showImage && date.isNotEmpty)
          Text(
            date,
            style: TextStyle(
              color: blackColor, // Assuming `blackColor` is a color variable
              fontFamily: "OxygenLight",
              fontSize: 14,
            ),
          ),
        if (showImage)
          Container(
            width: 20,
            height: 20,
            child: Image.asset(
              "Assets/Icons/Group 81.png",
              width: 20,
              height: 20,
            ),
          ),
      ],
    );
  }
}
