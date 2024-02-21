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
            backgroundColor: whiteColor,

      appBar:AppbarWithCart(PageName: "Annual Contract Subscription"),
    
      body: Column(
        children: [
          SubscriptionScheme(),
          SubscriptionScheme()
        ],
      )
      
    );
  }
}
