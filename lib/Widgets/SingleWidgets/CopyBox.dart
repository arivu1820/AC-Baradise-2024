import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class CopyBox extends StatelessWidget {
  const CopyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 10, ),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: lightGray80Color,
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "#zkigog751d51df00edkne",
                  style: TextStyle(
                      fontFamily: "OxygenRegular",
                      fontSize: 12,
                      color: blackColor),
                ),
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                    height: 40,
                    decoration: BoxDecoration(color: lightGray80Color),
                    child: Row(
                      children: [
                        Image.asset(
                          "Assets/Icons/Group_88.png",
                          height: 15,
                          width: 12,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Copy",
                          style: TextStyle(
                              fontFamily: "OxygenRegular",
                              fontSize: 12,
                              color: blackColor),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
