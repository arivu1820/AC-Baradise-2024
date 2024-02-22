import 'dart:ffi';

import 'package:acbaradise_2024/Widgets/SingleWidgets/AMCPrice.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class AnnualSchemeContainer extends StatelessWidget {
  const AnnualSchemeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      padding: const EdgeInsets.only(left: 20, top: 0, bottom: 5, right: 10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
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
                  margin: EdgeInsets.only(top: 10),
                  child: const Text(
                    "Split AC - Scheme 1",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "LexendRegular",
                      fontSize: 18,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Text(
                "23 %",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: "LexendMedium",
                  fontSize: 20,
                  color: darkBlueColor,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                  child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: "LexendRegular",
                    fontSize: 12,
                    color: black60Color,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "Voltas 183V Vectra Platina 4 in 1 Convertible 1.5 Ton 3 Star Inverter Split AC with Anti Dust Filter (2023 Model, Copper. Platina 4 in 1 Conv"+"  ",
                    ),
                    TextSpan(
                      text: "More",
                      style: const TextStyle(

                        color:
                            darkBlueColor, // Replace with your desired bold color
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Add your onTap functionality here
                          print("Second part clicked!");
                        },
                    ),
                  ],
                ),
              )),
              const SizedBox(
                width: 40,
              ),
              const AMCPrice(),
            ],
          )
        ],
      ),
    );
  }
}
