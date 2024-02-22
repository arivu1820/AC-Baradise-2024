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

      appBar: AppbarWithCart(PageName: "Payment",iscart:false),      body: Column(
        children: [
          const CashonDelivery(),
          const PaymentMethod(),
          const SimplyExpand(),
          CommonBtn(BtnName: "Confirm order to Proceed", function: () {},isSelected:true),
        ],
      ),
    );
  }
}
