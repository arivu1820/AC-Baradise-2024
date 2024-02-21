import 'package:acbaradise_2024/Widgets/SingleWidgets/OrdersMore.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class OrderPrice extends StatefulWidget {
  const OrderPrice({Key? key}) : super(key: key);

  @override
  _OrderPreceState createState() => _OrderPreceState();
}

class _OrderPreceState extends State<OrderPrice> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final String name = "₹60000";
    return Row(
      children: [
        SizedBox(
          height: 70,
        ),
        IconButton(
          onPressed: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
            // Show message based on _isExpanded state
          },
          icon: Container(
            width: 20,
            height: 10,
            child: Image.asset(
              _isExpanded
                  ? "Assets/Icons/2_Arrow.png"
                  : "Assets/Icons/Arrow_2.png",
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ],
    );
  }
}
