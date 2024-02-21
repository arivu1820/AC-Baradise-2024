import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CardAddBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrderPriceWithout.dart';
import 'package:flutter/material.dart';

class CartAMCContainer extends StatelessWidget {
  final bool isQtyReq;
  const CartAMCContainer({Key? key, required this.isQtyReq});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Service for - Cassette AC",
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
          isQtyReq ?   OrderPriceWithout():CartAddBtn()
        ],
      ),
    );
  }
}
