import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ProductCartBtn extends StatelessWidget {
  const ProductCartBtn({super.key});


  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final isTextVisible = screenWidth > 200;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 40,
        width: 200,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: Light2darkblueLRgradient ,
        ),
        child: Center(
          child: Text(
            "ADD TO CART",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "LexendMedium",
              color: blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
