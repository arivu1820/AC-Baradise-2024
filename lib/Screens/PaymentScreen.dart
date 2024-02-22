import 'package:acbaradise_2024/Widgets/CombinedWidgets/PaymentMethod.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CommonBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SimplyExpand.dart';
import 'package:flutter/material.dart';
import "package:acbaradise_2024/Theme/Colors.dart";
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CashonDelivery.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: whiteColor,

      appBar: AppBar(
          title: Text(
            "Payment",
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
         
        ),
      body: Column(
        children: [
          const CashonDelivery(),
          const PaymentMethod(),
          const SimplyExpand(),
          CommonBtn(BtnName: "Confirm order to Proceed", function: () {}),
        ],
      ),
    );
  }
}
