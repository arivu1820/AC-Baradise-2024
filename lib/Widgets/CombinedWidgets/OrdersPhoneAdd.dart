import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartAMCContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartProductContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersCostContainer.dart';
import 'package:flutter/material.dart';

class OrdersPhoneAdd extends StatelessWidget {
  final String address =
      "42, first floor, C door 3-47, Natarajan Salai Thiru nagar, CHENNAI, TAMIL NADU 600066";

  const OrdersPhoneAdd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Placed Address",
            style: const TextStyle(
              fontFamily: "OxygenBold",
              fontSize: 18,
              color: blackColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            address,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: "OxygenLight",
              color: blackColor,
            ),
          ),
          SizedBox(height: 20,),
          Text(
            "Madhan - +91 9840994788",
            
            style: const TextStyle(
              fontSize: 14,
              fontFamily: "OxygenReglar",
              color: blackColor,
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
