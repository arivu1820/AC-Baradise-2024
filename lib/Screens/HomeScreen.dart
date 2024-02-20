import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ExploreDivider.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/HomePageProductsList.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/MyCartBanner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductsForYouText.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/PurchaseBrands.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServiceAndAMCContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AC Baradise",
          style: TextStyle(
            fontFamily: "Iceberg",
            fontSize: 25,
            color: blackColor,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Dark2ligthblueLRgradient,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ServiceAndAMCContainer(),
            ExploreDivider(),
            MyCartBanner(),
            const SizedBox(
              height: 20,
            ),
            ProductsForYouText(),
            HomePageProductsList(ProductName: "Split AC's"),
            HomePageProductsList(ProductName: "Window AC's"),
            HomePageProductsList(ProductName: "Cassette AC's"),
            const SizedBox(
              height: 20,
            ),
            PurchaseBrands(),
            const SizedBox(
              height: 10,
            ),
            HomePageProductsList(ProductName: "Fast Moving"),
             const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
