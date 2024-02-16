import 'package:acbaradise_2024/Widgets/SingleWidgets/OverviewContent.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductContent.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductLargeCartBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SpecificationContent.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AutoImageSlider.dart';

class ACProductScreen extends StatelessWidget {
  final String ProductName;
  ACProductScreen({required this.ProductName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          ProductName,
          style: const TextStyle(
            fontFamily: "OxygenRegular",
            fontSize: 20,
            color: blackColor,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Dark2ligthblueLRgradient,
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'Assets/Icons/Back_Arrow_icon.png',
            width: 15,
            height: 15,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          SizedBox(
            width: screenWidth * 0.3,
          ),
          const Text(
            "My Cart",
            style: TextStyle(
              fontFamily: "LexendRegular",
              fontSize: 12,
              color: blackColor,
            ),
          ),
          IconButton(
            icon: Image.asset(
              'Assets/Icons/My_Cart_Icon.png', // Replace with the correct path to your image asset
              width: 25, // Adjust the width as needed
              height: 20, // Adjust the height as needed
              color: blackColor, // Set the color of your icon
            ),
            onPressed: () {
              // Add your onPressed logic here
            },
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
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
                )),
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
            OverviewContent(),
            SpecificationContent(),
            // Add the rest of your widgets here
          ],
        ),
      ),
    );
  }
}
