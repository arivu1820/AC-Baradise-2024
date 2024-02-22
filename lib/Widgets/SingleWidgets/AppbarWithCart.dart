import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Screens/MyCartScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class AppbarWithCart extends StatelessWidget implements PreferredSizeWidget {
  final String PageName;

  const AppbarWithCart({required this.PageName});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      title: Text(
        PageName,
        style: const TextStyle(
          fontFamily: "LexendRegular",
          fontSize: 18,
          color: blackColor,
        ),
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: Dark2ligthblueLRgradient,
        ),
      ),
      actions: [
        SizedBox(
          width: screenWidth * 0.09,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyCartScreen(),
              ),
            );
          },
          child: Row(
            children: [
              const Text(
                "My Cart",
                style: TextStyle(
                  fontFamily: "LexendRegular",
                  fontSize: 12,
                  color: blackColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'Assets/Icons/My_Cart_Icon.png', // Replace with the correct path to your image asset
                width: 25, // Adjust the width as needed
                height: 20, // Adjust the height as needed
                color: blackColor, // Set the color of your icon
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
