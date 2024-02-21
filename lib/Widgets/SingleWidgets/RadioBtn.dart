import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class RadioBtn extends StatefulWidget {
  final Function funtion;

  RadioBtn({required this.funtion});

  @override
  State<RadioBtn> createState() => _RadioBtnState();
}

class _RadioBtnState extends State<RadioBtn> {
  @override
  Widget build(BuildContext context) {
    bool Selected = true;
    return InkWell(
        onTap: () {
          setState(() {
            Selected = !Selected;
          });
        },
        child: Container(
          width: 26,
          height: 26,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: lightBlueColor,
              width: 1,
            ),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Selected ? lightBlueColor : Colors.transparent ),
              width: 14,
              height: 14,
            ),
          ),
        ));
  }
}
