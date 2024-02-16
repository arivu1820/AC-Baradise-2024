import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class CartAddBtn extends StatelessWidget {
  const CartAddBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 90,
          height: 40,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: darkBlue50Color,
                offset: Offset(0, 0),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove,
                      color: darkBlueColor,
                      size: 20,
                    )),
                
                Text(
                  "3",
                  style: const TextStyle(
                    fontFamily: "lexendRegular",
                    fontSize: 20,
                    color: darkBlueColor,
                  ),
                ),
                
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: darkBlueColor,
                      size: 20,
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "₹599",
          style: const TextStyle(
            fontFamily: "OxygenRegular",
            fontSize: 17,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}
