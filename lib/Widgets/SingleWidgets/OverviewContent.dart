import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class OverviewContent extends StatelessWidget {
  const OverviewContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Overview and Specifications",
            style: TextStyle(
              fontFamily: "LexendRegular",
              fontSize: 14,
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "'Experience superior cooling comfort with the Voltas Split AC. Its advanced technology ensures rapid cooling, energy efficiency, and a quiet operation. Designed to seamlessly blend with your space, this AC brings a touch of modern elegance.'$index",
                    style: TextStyle(
                      fontFamily: "OxygenRegular",
                      fontSize: 12,
                      color: blackColor,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
