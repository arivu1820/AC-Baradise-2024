import 'package:acbaradise_2024/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class GoogleSigninBtn extends StatelessWidget {
  const GoogleSigninBtn({Key? key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(color: lightBlueColor,
          borderRadius: BorderRadius.circular(5),),
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "Assets/Icons/Google_icon.png",
              height: 30,
              width: 30,
            ),
            const SizedBox(
              width: 25,
            ),
            const Text(
              "Continue with Google",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "OxygenBold",
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
