import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class RadioBtn extends StatelessWidget {
  final bool isselected;

  RadioBtn({required this.isselected});

  @override
  Widget build(BuildContext context) {
    
    return Container(
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
              color: isselected ? lightBlueColor : Colors.transparent ),
          width: 14,
          height: 14,
        ),
      ),
    );
  }
}
