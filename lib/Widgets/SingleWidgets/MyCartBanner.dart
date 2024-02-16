import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class MyCartBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
      decoration: BoxDecoration(
        color: black50Color,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: screenWidth * 0.25,
    );
  }
}
