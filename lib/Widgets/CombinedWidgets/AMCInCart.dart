import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartAMCContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartProductContainer.dart';
import 'package:flutter/material.dart';

class AMCInCart extends StatelessWidget {
  final bool isQtyReq;
  const AMCInCart({Key? key, required this.isQtyReq}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "AMC",
            style: const TextStyle(
              fontFamily: "Stylish",
              fontSize: 18,
              color: darkBlueColor,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CartAMCContainer(isQtyReq: isQtyReq,),
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}
