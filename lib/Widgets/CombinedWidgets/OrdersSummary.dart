import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersCostContainer.dart';
import 'package:flutter/material.dart';

class OrdersSummary extends StatelessWidget {
  const OrdersSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       margin: const EdgeInsets.only(left: 20, right: 20,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Order Summary",
            style: const TextStyle(
              fontFamily: "OxygenBold",
              fontSize: 18,
              color: blackColor,
            ),
          ),
          OrdersCostContainer()
        ],
      ),
    );
  }
}
