import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class OrderPriceWithout extends StatelessWidget {
  const OrderPriceWithout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = "₹60000";
    return Column(
    
       mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        
        Text(
          name,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: "OxygenRegular",
            color: blackColor,
          ),
        ),
        Text(
          "Qty: 1",
          style: const TextStyle(
            fontSize: 10,
            fontFamily: "OxygenRegular",
            color: black50Color,
          ),
        ),
      ],
    );
  }
}
