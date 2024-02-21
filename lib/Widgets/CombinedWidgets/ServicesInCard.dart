import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartServiceContainer.dart';
import 'package:flutter/material.dart';

class ServicesInCart extends StatelessWidget {
final bool isQtyReq;

  const ServicesInCart({Key? key, required this.isQtyReq}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Services",
            style: const TextStyle(
              fontFamily: "Stylish",
              fontSize: 18,
              color: darkBlueColor,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => CartServiceContainer(isQtyReq: isQtyReq,),
            itemCount: 2,
          ),
        ],
      ),
    );
  }
}
