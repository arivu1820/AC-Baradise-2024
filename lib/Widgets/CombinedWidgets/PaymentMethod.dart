import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key});

  @override
  State<PaymentMethod> createState() => _CashonDeliveryState();
}

class _CashonDeliveryState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30,top: 30,bottom: 30,right:20),
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
              "Assets/Icons/Payment_method_icon.png",
              height: 40,
              width: 40,
            ),
          ),
          const SizedBox(width: 30),
          const Expanded(
            child: Text(
              "Pay Through Online",
              style: TextStyle(
                fontFamily: "OxygenRegular",
                fontSize: 16,
                color: blackColor,
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Image.asset("Assets/Icons/ArrowRight.png",height: 20,width: 10,))
        ],
      ),
    );
  }
}
