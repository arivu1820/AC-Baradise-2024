import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ServicePageBanner extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
              double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      height: screenWidth*0.5,
      color: black50Color,
      child: Image.asset(
        "Assets/Icons/AC_Baradise_icon.png",
        width: double.infinity,
        height: 200,
      ),
    );
  }
}
