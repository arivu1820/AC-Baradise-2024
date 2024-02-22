import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CardAddBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrderPriceWithout.dart';
import 'package:flutter/material.dart';

class CartProductContainer extends StatelessWidget {
  final bool isQtyReq;
  const CartProductContainer({super.key, required this.isQtyReq});

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
              "Assets/Icons/image_31.png",
              height: 70,
              width: 110,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              "Service for - Cassette AC",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: "LexendLight",
                fontSize: 15,
                color: blackColor,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          isQtyReq ? OrderPriceWithout() : CartAddBtn(),
        ],
      ),
    );
  }
}
