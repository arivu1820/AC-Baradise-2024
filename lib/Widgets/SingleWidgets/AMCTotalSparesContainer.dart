import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class AMCTotalSparesContainer extends StatelessWidget {
  const AMCTotalSparesContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: lightBlueColor),
          color: whiteColor,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: Text(
              "data$index",
              style: const TextStyle(
                  fontFamily: "LexendLight", fontSize: 12, color: blackColor),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
