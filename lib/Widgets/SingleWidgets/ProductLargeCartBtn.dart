import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class ProductLargeCartBtn extends StatefulWidget {
ProductLargeCartBtn({super.key});

  @override
  State<ProductLargeCartBtn> createState() => _ProductLargeCartBtnState();
}

class _ProductLargeCartBtnState extends State<ProductLargeCartBtn> {
bool iscarted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          iscarted = !iscarted;
        });
      },
      child: iscarted?Container(
        height: 60,
        width: double.infinity,
        margin: const EdgeInsets.only(left:20 ,right: 20,top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: lightBlue50Color ,
        ),
        child:const Center(
          child: Text(
            "Added",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "LexendMedium",
              color: blackColor,
            ),
          ),
        ),
      ): Container(
        height: 60,
        width: double.infinity,
        margin: const EdgeInsets.only(left:20 ,right: 20,top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: Light2darkblueLRgradient ,
        ),
        child:const Center(
          child: Text(
            "Add To Cart",
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