import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CardAddBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrderPrice.dart';
import 'package:flutter/material.dart';

class CartProductContainer extends StatelessWidget {
  const CartProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 80,
            child: Image.asset(
              "Assets/Icons/Google_icon.png",
              height: 70,
              width: 110,
            ),
          ),
          Expanded(
            child: Text(
              "asdfasdfsafdsfasdfasdfasdfasdfasdfsdfasdfasdfasdfasdfsdafsdafasdfasdf",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: "OxygenRegular",
                fontSize: 15,
                color: blackColor,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          OrderPrice(),
        ],
      ),
    );
  }
}
