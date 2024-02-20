import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ServicesContainer extends StatelessWidget {
  final String ServiceName;

  ServicesContainer({required this.ServiceName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: lightGrayColor, width: 0.3)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                ServiceName,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "OxygenBold",
                  color: blackColor,
                ),
              ),
            ),
          ),
          Container(
            child: Image.asset("Assets/Icons/Google_icon.png"),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            height: 75,
            width: 100,
          )
        ],
      ),
    );
  }
}