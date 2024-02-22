import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ACPContainer extends StatelessWidget {
  final bool ifTrue;

  const ACPContainer({Key? key, required this.ifTrue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(20,10,20,0),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(color: lightBlue75Color, width: 1),
            borderRadius: BorderRadius.circular(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "Voltas 183V Vectra Platina 4 in 1 Convertible 1.5 Ton 3 Star Inverter Split AC with Anti Dust Filter (2023 Model, Copper. Platina 4 in 1 Conv",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: "LexendRegular",
                      color: black90Color,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                  width: 60,
                  child: Container(
                    color: darkBlueColor,
                  ),
                ),
                Text(
                  "₹ 58,838.89",
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: "LexendRegular",
                    color: black90Color,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 9,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order #1C63FKKNN79684 ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 10,
                          fontFamily: "LexendLight",
                          color: black90Color,
                        ),
                      ),
                      Text(
                        "14 sep 2025",
                        style: const TextStyle(
                          fontSize: 10,
                          fontFamily: "LexendLight",
                          color: black90Color,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20,),
                Image.asset(
                  ifTrue
                      ? "Assets/Icons/Fulfilled.png"
                      : "Assets/Icons/Group_82.png",
                  height: ifTrue ? 15 : 20,
                  width: ifTrue ? 55 : 55,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
