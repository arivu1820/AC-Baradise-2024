import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class OrdersMore extends StatelessWidget {
final String heading;
  final String description; 

  const OrdersMore({
    Key? key,
    required this.heading,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(heading,
        style: TextStyle(
          fontFamily: "OxygenRegular",
          fontSize: 15,
          color: blackColor
        ),
        
        ),
        Text(description,
        style: TextStyle(
          fontFamily: "OxygenRegular",
          fontSize: 15,
          color: black50Color)
        ),
      ],
    );
  }
}