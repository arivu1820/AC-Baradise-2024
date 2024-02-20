import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class BrandsContainer extends StatelessWidget {
  const BrandsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width-40;
    double containerHeight = screenWidth / 5; // Adjust the factor as needed
    double containerWidth = (screenWidth - 30) / 4; // Adjust as needed
    return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: lightBlue20Color),
                  height: containerHeight,
                  width: containerWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("Assets/Icons/Google_icon.png"),
                  ),
                );
  }
}