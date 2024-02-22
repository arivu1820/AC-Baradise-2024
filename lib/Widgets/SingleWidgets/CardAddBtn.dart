import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class CartAddBtn extends StatefulWidget {
  const CartAddBtn({super.key});

  @override
  State<CartAddBtn> createState() => _CartAddBtnState();
}

class _CartAddBtnState extends State<CartAddBtn> {
  bool added = true;
  int count = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        added
            ? Container(
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
                          onPressed: () {
                            setState(() {
                              if (count == 1) added = false;
                              count = --count;
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            color: darkBlueColor,
                            size: 20,
                          )),
                      Text(
                        count.toString(),
                        style: const TextStyle(
                          fontFamily: "lexendRegular",
                          fontSize: 20,
                          color: darkBlueColor,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              count = ++count;
                            });
                          },
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
              )
            : Container(
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        right: 20, left: 20, top: 10, bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          added = true;
                          count = ++count;
                        });
                      },
                      child: Text(
                        "Add",
                        style: const TextStyle(
                          fontFamily: "lexendRegular",
                          fontSize: 20,
                          color: darkBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "₹599",
          style: const TextStyle(
            fontFamily: "LexendLight",
            fontSize: 17,
            color: blackColor,
          ),
        ),
      ],
    );
  }
}
