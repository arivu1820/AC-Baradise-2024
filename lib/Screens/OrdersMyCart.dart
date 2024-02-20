import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrderServicesInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersAMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersMyCartProduct.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersPhoneAdd.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersSummary.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsInCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ContinueToPaymentBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CostContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SelectAnAddress.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ServicesInCard.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/MyCartBanner.dart';
import 'package:flutter/material.dart';

class OrdersMyCartScreen extends StatelessWidget {
  const OrdersMyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Orders",
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
                  OrdersMyCartProduct(),
                  OrderServicesInCart(),
                  OrdersAMCInCart(),
                  OrdersSummary(),
                  OrdersPhoneAdd()
                ],
              ),
            ),
          ],
        ));
  }
}