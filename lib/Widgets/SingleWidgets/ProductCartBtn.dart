import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ProductCartBtn extends StatefulWidget {
ProductCartBtn({super.key});

  @override
  State<ProductCartBtn> createState() => _ProductCartBtnState();
}

class _ProductCartBtnState extends State<ProductCartBtn> {
bool iscarted = false;

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final isTextVisible = screenWidth > 200;
    return GestureDetector(
      onTap: () {
setState(() {
  iscarted = !iscarted;
});
      },
      child:iscarted?Container(
        height: 40,
        width: 200,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: lightBlue50Color ,
        ),
        child: Center(
          child: Text(
            "Added",
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontFamily: "LexendMedium",
              color: blackColor,
            ),
          ),
        ),
      ) :Container(
        height: 40,
        width: 200,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: Light2darkblueLRgradient ,
        ),
        child: Center(
          child: Text(
            "Add To Cart",
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
