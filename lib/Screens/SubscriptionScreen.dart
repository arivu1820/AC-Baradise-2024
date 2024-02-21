import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsListContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/SubscriptionScheme.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ContentFilerContioner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ManualImageSlider.dart';
import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Annual Contract Subscription",
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
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return SubscriptionScheme();
        },
      ),
    );
  }
}
