import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class DrawerChildContioner extends StatelessWidget {
  final String name;
  final String image;
  DrawerChildContioner({required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      height: 50,
      width: double.infinity,
      child: Row(children: [
        Image.asset(image,width: 22,height: 22,color: blackColor,),
        const SizedBox(width: 10,),
        Text(name, style: const TextStyle(
                fontFamily: "LexendRegular",
                fontSize: 15,
                color: blackColor,
              ),),
      ],),
    );
  }
}