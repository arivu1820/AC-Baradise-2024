import 'package:acbaradise_2024/Widgets/SingleWidgets/RadioBtn.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class CashonDelivery extends StatefulWidget {
  const CashonDelivery({Key? key});

  @override
  State<CashonDelivery> createState() => _CashonDeliveryState();
}

class _CashonDeliveryState extends State<CashonDelivery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: lightBlue30Color,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(color: lightBlueColor),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Image.asset(
              "Assets/Icons/Cash_on_delivery_icon.png",
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(width: 30),
          const Expanded(
            child: Text(
              "Cash On Delivery",
              style: TextStyle(
                fontFamily: "OxygenRegular",
                fontSize: 16,
                color: blackColor,
              ),
            ),
          ),
          RadioBtn(isselected: true,),
        ],
      ),
    );
  }
}
