import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/gestures.dart';

class TCandPrivacy extends StatelessWidget {
  const TCandPrivacy({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontFamily: "LexendMedium",
              fontSize: 12,
              color: blackColor,
            ),
            children: [
              const TextSpan(
                text: "By continuing, you accept",
              ),
              TextSpan(
                text: " T&C",
                style: const TextStyle(
                  color: darkBlueColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Add your logic for T&C link press here
                  },
              ),
              const TextSpan(
                text: " and",
              ),
              TextSpan(
                text: " Privacy Policy",
                style: const TextStyle(
                  color: darkBlueColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Add your logic for Privacy Policy link press here
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
