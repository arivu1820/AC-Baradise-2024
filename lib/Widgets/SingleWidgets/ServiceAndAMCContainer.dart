import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ServiceAndAMCContainer extends StatelessWidget {
  const ServiceAndAMCContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return FittedBox(
      fit: BoxFit.contain,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: darkBlue25Color,
                  offset: Offset(0, 0),
                  blurRadius: 4.0,
                  spreadRadius: 0,
                ),
              ],
            ),
            width: 175,
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 20),
                    child: Text(
                      "Service's",
                      style: TextStyle(
                          color: blackColor,
                          fontFamily: "LexendLight",
                          fontSize: 16),
                    )),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  width: double.infinity,
                  height: 110,
                  child: Image.asset("Assets/Icons/Google_icon.png"),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only( right: 20, top: 20),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: darkBlue25Color,
                  offset: Offset(0, 0),
                  blurRadius: 4.0,
                  spreadRadius: 0,
                ),
              ],
            ),
            width: 175,
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 5, left: 10, right: 10, bottom: 20),
                    child: Text(
                      "Annual Contract",
                      style: TextStyle(
                          color: blackColor,
                          fontFamily: "LexendLight",
                          fontSize: 16),
                    )),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  width: double.infinity,
                  height: 110,
                  child: Image.asset("Assets/Icons/Google_icon.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
