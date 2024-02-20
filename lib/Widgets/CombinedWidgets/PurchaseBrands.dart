import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/BrandsContainerRow.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/BrandsContainer.dart';
import 'package:flutter/material.dart';

class PurchaseBrands extends StatelessWidget {
  const PurchaseBrands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Purchase by Brand’s",
            style: TextStyle(
              fontSize: 16,
              fontFamily: "LexendRegular",
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BrandsContainerRow(),
          const SizedBox(
            height: 10,
          ),
          BrandsContainerRow(),
          const SizedBox(
            height: 10,
          ),
          BrandsContainerRow(),
         
        ],
      ),
    );
  }
}
