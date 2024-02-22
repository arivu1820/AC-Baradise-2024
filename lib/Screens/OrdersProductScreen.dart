import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersPhoneAdd.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersSummary.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ServicesInCard.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:flutter/material.dart';

class OrdersProductScreen extends StatelessWidget {
  const OrdersProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppbarWithCart(PageName: "Products",iscart: true),
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
/*
DONE
 */