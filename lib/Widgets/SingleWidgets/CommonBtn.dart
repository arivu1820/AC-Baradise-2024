import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class CommonBtn extends StatelessWidget {
  final String BtnName;
  final Function function;
  final bool isSelected;
  CommonBtn({required this.BtnName, required this.function,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function();
      },
      child: Container(
        height: 60,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 30,vertical: 30
        ), 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: lightBlueColor,
        ),
        child: Center(
          child: Text(
            BtnName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "LexendLight",
              color: blackColor,
            ),
          ),
        ),
      ),
    );
  }
}
