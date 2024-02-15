import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsListContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ContentFilerContioner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ManualImageSlider.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Split AC",
          style: TextStyle(
            fontFamily: "OxygenRegular",
            fontSize: 20,
            color: blackColor,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Dark2ligthblueLRgradient,
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            'Assets/Icons/Back_Arrow_icon.png',
            width: 15,
            height: 15,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ContentFilterContainer(content: "1 Ton", isSelected: false),
                  ContentFilterContainer(content: "1.5 Ton", isSelected: true),
                  ContentFilterContainer(content: "2 Ton", isSelected: false),
                  ContentFilterContainer(content: "Samsung", isSelected: false),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          ProductsListContainer()
        ],
      ),
    );
  }
}
