import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsInCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ContinueToPaymentBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CostContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SelectAnAddress.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ServicesInCard.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/MyCartBanner.dart';
import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "My Cart",
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
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  MyCartBanner(),
                  ProductsInCart(),
                  ServicesInCart(),
                  AMCInCart(),
                  Container(
                    height: 10,
                    color: lightGray50Color,
                    width: double.infinity,
                  ),
                  SelectAnAddress(),
                  CostContainer(),
                  const SizedBox(
                    height: 150,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ContinueToPayment(),
            ),
          ],
        ));
  }
}
