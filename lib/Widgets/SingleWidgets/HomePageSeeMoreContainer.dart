import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class HomePageSeeMoreContainer extends StatelessWidget {
  const HomePageSeeMoreContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 70,
      margin: const EdgeInsets.only(right: 20,left: 10,top: 5,bottom: 5),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(color: lightBlueColor, width: 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: lightBlueColor,
            offset: Offset(0, 0),
            blurRadius: 4.0,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
            child: Text(
              
              "See more",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "OxygenBold",
                fontSize: 14,
                color: blackColor,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "Assets/Icons/Back_Arrow_icon.png",
            width: 20,
            height: 20,
          )
        ],
      ),
    );
  }
}
