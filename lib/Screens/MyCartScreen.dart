import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsInCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
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
        appBar:  AppbarWithCart(PageName: "My Cart",iscart: false),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  MyCartBanner(),
                  ProductsInCart(isQtyReq:false),
                  ServicesInCart(isQtyReq: false,),
                  AMCInCart(isQtyReq:false),
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
