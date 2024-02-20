import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ExploreDivider extends StatelessWidget {
  const ExploreDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
      child: Row(children: [
        Expanded(child: Divider(color: lightGrayColor,thickness: 0.5,)),
        Padding(
          padding: const EdgeInsets.only(right: 10,left: 10),
          child: Text("EXPLORE",style: TextStyle(
                          color: darkGreyColor,
                          fontFamily: "OxygenBold",
                          fontSize: 12),),
        ),
        Expanded(child: Divider(color: lightGrayColor,thickness: 0.5),),
      ],),
    );
  }
}