import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/GoogleSigninBtn.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SimplyExpand.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/TCandPrivacy.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SimplyExpand(),
          Text(
            "AC Baradise",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              fontFamily: "Iceberg",
              color: lightBlueColor,
            ),
          ),
          SimplyExpand(),
          TCandPrivacy(),
          SizedBox(
            height: 20,
          ),
          GoogleSigninBtn(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
