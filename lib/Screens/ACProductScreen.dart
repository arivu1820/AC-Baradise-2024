import 'package:acbaradise_2024/Widgets/CombinedWidgets/HomePageProductsList.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AutoImageSlider.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductContent.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductLargeCartBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OverviewContent.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SpecificationContent.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';

class ACProductScreen extends StatelessWidget {
  final String ProductName;

  ACProductScreen({required this.ProductName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppbarWithCart(PageName: ProductName),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: const SizedBox(
                    width: 20,
                  ),
                ),
                const Text(
                  "43% off",
                  style: TextStyle(
                    fontFamily: "LexendRegular",
                    fontSize: 16,
                    color: brownColor,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            AutoImageSlider(),
            ProductContent(),
            ProductLargeCartBtn(),

            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Row(
                children: [
                  Text(
                    "₹ 34,000",
                    style: TextStyle(
                      fontFamily: "LexendRegular",
                      fontSize: 30,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "M.R.P ₹ 39,990",
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontFamily: "LexendRegular",
                      fontSize: 18,
                      color: black50Color,
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
              child: Text(
                "save ₹ 4,990",
                style: TextStyle(
                  fontFamily: "LexendRegular",
                  fontSize: 20,
                  color: darkBlueColor,
                ),
              ),
            ),
            OverviewContent(),
            SpecificationContent(),
            HomePageProductsList(ProductName: "Stabilizer"),
            const SizedBox(
              height: 20,
            ),
            // Add the rest of your widgets here
          ],
        ),
      ),
    );
  }
}
