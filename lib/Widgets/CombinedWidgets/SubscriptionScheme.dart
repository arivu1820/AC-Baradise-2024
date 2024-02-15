import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class SubscriptionScheme extends StatelessWidget {
  const SubscriptionScheme({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 20, right: 20),
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: lightBlue75Color,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 25,
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "Split AC - Scheme 1",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "OxygenRegular",
                        fontSize: 18,
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                  width: 50,
                ),
                Text(
                  "Qty: 3",
                  style: TextStyle(
                    fontFamily: "OxygenRegular",
                    fontSize: 14,
                    color: blackColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "1 annual service not yet completed",
                  style: TextStyle(
                    color: leghtGreen,
                    fontFamily: "OxygenRegular",
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                Text(
                  "1 annu",
                  style: TextStyle(
                    color: leghtGreen,
                    fontFamily: "OxygenRegular",
                    fontSize: 14,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Container(
                    
                    
                    width: 10,
                    height: 20,
                    child: Image.asset(
                      "Assets/Icons/Arrow 2.png",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
/*
TO DO:
  1. Position of arrow is placed 
 */