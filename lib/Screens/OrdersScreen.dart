import 'package:acbaradise_2024/Screens/OrdersProductScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ACPContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWithCart(PageName: "Orders",iscart: true),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return GestureDetector(onTap: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrdersProductScreen(),
                    ));
          }, child: ACPContainer(ifTrue: true,));
        },
      ),
    );
  }
}
