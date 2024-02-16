import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CopyBox.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/DottedLine.dart';
import 'package:flutter/material.dart';

class MoreViewSubscriptionScheme extends StatelessWidget {
  const MoreViewSubscriptionScheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: darkGrey50Color,
            width: 1,
          ),
        ),
        height: 255,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "1st Service",
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "OxygenLight",
                    fontSize: 14,
                  ),
                )),
                Container(
                    width: 20,
                    height: 20,
                    child: Image.asset("Assets/Icons/Group 81.png")),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "2nd Service",
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "OxygenLight",
                    fontSize: 14,
                  ),
                )),
                Container(
                    width: 20,
                    height: 20,
                    child: Image.asset("Assets/Icons/Group 81.png"))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "3rd Service",
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "OxygenLight",
                    fontSize: 14,
                  ),
                )),
                Text(
                  "oct 2023",
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "OxygenLight",
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "4th Service",
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "OxygenLight",
                    fontSize: 14,
                  ),
                )),
                Text(
                  "Jan 2024",
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "OxygenLight",
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 10, top: 20),
              height: 1,
              width: double.infinity,
              child: DottedLine(),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Row(
                children: [
                  Text(
                    "To discover the advantages of this scheme ",
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: "OxygenLight",
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                        color: darkBlueColor,
                        fontFamily: "OxygenLight",
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CopyBox(),
          ],
        ),
      ),
    );
  }
}


/*
TO DO:
  1. write condition for the Date and Tick Simble
 */