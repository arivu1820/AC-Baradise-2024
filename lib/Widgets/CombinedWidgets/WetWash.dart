import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/GeneralServiceContentContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/WetWashContentContainer.dart';
import 'package:flutter/material.dart';

class WetWash extends StatelessWidget {
  const WetWash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Wet Wash",
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "LexendRegular",
              color: blackColor,
            ),
          ),
        ),
        WetWashContentContainer(is360degree: true),
        WetWashContentContainer(is360degree: true),
        WetWashContentContainer(is360degree: false),
      ],
    );
  }
}
