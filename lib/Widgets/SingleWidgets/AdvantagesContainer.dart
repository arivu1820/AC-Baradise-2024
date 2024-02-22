import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class AdvantagesContainer extends StatelessWidget {
  final bool showImageFirst;

  const AdvantagesContainer({Key? key, required this.showImageFirst})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showImageFirst)
            Image.asset(
              "Assets/Icons/Close_Cross_Icon.png",
              width: 80,
              height: 80,
            ),
          const SizedBox(width: 10,),
          Expanded(
            child: Text(
              "This returns the size of the window rather than screen, ie on a system that supports windows this value will change as you resize the window rather than being a fixed value based on the screen's pixel count.",
              style: const TextStyle(
                  fontFamily: "LexendLight", fontSize: 14, color: blackColor),
            ),
          ),
          if (!showImageFirst)
            Image.asset(
              "Assets/Icons/Close_Cross_Icon.png",
              width: 80,
              height: 80,
            ),
        ],
      ),
    );
  }
}
