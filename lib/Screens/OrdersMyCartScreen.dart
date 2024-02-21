import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersPhoneAdd.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersSummary.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ServicesInCard.dart';
import 'package:flutter/material.dart';

class OrdersMyCartScreen extends StatelessWidget {
  const OrdersMyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: whiteColor,

        appBar: AppbarWithCart(PageName: "My Orders"),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ProductsInCart(isQtyReq:true),
                  ServicesInCart(isQtyReq: true),
                  AMCInCart(isQtyReq: true),
                  OrdersSummary(),
                  OrdersPhoneAdd(),
                ],
              ),
            ),
          ],
        ));
  }
}
