import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ProductContent extends StatelessWidget {
  const ProductContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
      child: Text(
                "VOLTAS 185V Vectra Elite 4 in 1 Convertible 1.5 Ton 5 Star Inverter Split AC with Anti Dust Filter (2023 Model, Copper Condenser)",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "LexendRegular",
                  color: blackColor,
                ),
            
      ),
    );
  }
}