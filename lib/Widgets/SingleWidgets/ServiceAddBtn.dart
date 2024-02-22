import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ServiceAddBtn extends StatefulWidget {
  ServiceAddBtn({super.key});

  @override
  State<ServiceAddBtn> createState() => _ServiceAddBtnState();
}

class _ServiceAddBtnState extends State<ServiceAddBtn> {
  bool added = false;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return added
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
                          if(count==1)
                             added = false;
                          count = --count;
                        });
                      },
                      icon:Image.asset("Assets/Icons/Minus.png",height: 12,width: 12,)),
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
                      icon:Image.asset("Assets/Icons/Plus.png",height: 14,width: 14,)),
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
          );
  }
}
