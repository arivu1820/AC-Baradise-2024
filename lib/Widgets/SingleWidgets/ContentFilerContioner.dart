import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class ContentFilterContainer extends StatelessWidget {
  final String content;
  final bool isSelected;

  ContentFilterContainer({required this.content,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected? IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: lightBlueColor, width: 1),
          borderRadius: BorderRadius.circular(5),
          color: lightBlueColor
        ),
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:  Center(
          child: Text(
            content,
            textAlign: TextAlign.center,
            style:const TextStyle(
              fontFamily: "LexendRegular",
              fontSize: 14,
              color: blackColor,
            ),
          ),
        ),
      ),
    ) : IntrinsicWidth(
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          border: Border.all(color: darkGreyColor, width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:  Center(
          child: Text(
            content,
            textAlign: TextAlign.center,
            style:const TextStyle(
              fontFamily: "LexendRegular",
              fontSize: 14,
              color: black50Color,
            ),
          ),
        ),
      ),
    );
  }
}
