import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/GeneralServiceContentContainer.dart';
import 'package:flutter/material.dart';

class GeneralService extends StatelessWidget {
  const GeneralService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "General Service",
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "LexendRegular",
              color: blackColor,
            ),
          ),
        ),
        GeneralServiceContentContainer(),
        GeneralServiceContentContainer(),
        GeneralServiceContentContainer(),
      ],
    );
  }
}
