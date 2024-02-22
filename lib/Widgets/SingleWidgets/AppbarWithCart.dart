import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Screens/MyCartScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class AppbarWithCart extends StatelessWidget implements PreferredSizeWidget {
  final String PageName;
  final bool iscart;

  const AppbarWithCart({required this.PageName, required this.iscart});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      title: Row(
        children: [
          IconButton(
            icon: Image.asset(
              "Assets/Icons/BackArrow.png",
              height: 14,
              width: 14,
            ),
            onPressed: () {
              Navigator.pop(
                  context); // This will pop the current screen and go back
            },
          ),
          Expanded(
            child: Text(
              PageName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: "LexendRegular",
                fontSize: 18,
                color: blackColor,
              ),
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: Dark2ligthblueLRgradient,
        ),
      ),
      actions: [
        SizedBox(
          width: screenWidth * 0.09,
        ),
        iscart
            ? GestureDetector(
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
              )
            : SizedBox(),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
