import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class ProductLargeCartBtn extends StatelessWidget {
  const ProductLargeCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 60,
        width: double.infinity,
        margin: const EdgeInsets.only(left:20 ,right: 20,top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: Light2darkblueLRgradient ,
        ),
        child:const Center(
          child: Text(
            "ADD TO CART",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "LexendMedium",
              color: blackColor,
            ),
          ),
        ),
      ),
    );
  }
}