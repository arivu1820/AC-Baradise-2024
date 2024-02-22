import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AdvantagesContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AdvantagesCostandSpares.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SimplyExpand.dart';
import 'package:flutter/material.dart';

class AMCAdvantages extends StatelessWidget {
  final bool isOnlyAdvantages;

  AMCAdvantages({required this.isOnlyAdvantages});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Split AC - Scheme 1",
                      style: const TextStyle(
                          fontFamily: "LexendRegular",
                          fontSize: 18,
                          color: blackColor),
                    ),
                    Expanded(
                      child: const SizedBox(
                        width: 10,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        "Assets/Icons/Close_Cross_Icon.png",
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: lightBlueColor)),
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      // Alternate between image and text order
                      if (index % 2 == 0) {
                        return AdvantagesContainer(
                          showImageFirst: true,
                        );
                      } else {
                        return AdvantagesContainer(
                          showImageFirst: false,
                        );
                      }
                    },
                    itemCount: 5,
                  ),
                ),
                isOnlyAdvantages
                    ? const SizedBox(
                        height: 20,
                      )
                    : const SizedBox(
                        height: 170,
                      ),
              ],
            ),
          ),
        ),
        isOnlyAdvantages
            ? SizedBox()
            : Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: AdvantagesCostandSpares(),
              )
      ],
    );
  }
}
