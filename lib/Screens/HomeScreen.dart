import 'package:acbaradise_2024/Screens/MyCartScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/DrawerWidget.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ExploreDivider.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/HomePageProductsList.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/MyCartBanner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductsForYouText.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/PurchaseBrands.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServiceAndAMCContainer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: const Text(
          "AC Baradise",
          style: TextStyle(
            fontFamily: "Iceberg",
            fontSize: 25,
            color: blackColor,
          ),
        ),
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Dark2ligthblueLRgradient,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => _scaffoldKey.currentState?.openEndDrawer(),
            child: Image.asset(
              'Assets/Icons/Profile_Icon.png', // Replace with the correct path to your image asset
              width: 50, // Adjust the width as needed
              height: 50, // Adjust the height as needed
              color: whiteColor, // Set the color of your icon
            ),
          ),
          const SizedBox(width: 10,),
        ],
      ),
      endDrawer: DrawerWidget(name: "Perarivalan",emailid: "arivu1820@gmail.com",),
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
