import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrderPriceWithout.dart';
import 'package:flutter/material.dart';

class OrderService extends StatelessWidget {
  const OrderService({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10,20 ,0),
      padding: EdgeInsets.fromLTRB(10, 20,10 ,0),
      height: 80,
      width: double.infinity,
      color: whiteColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            child: Text(
              "Service for - Cassette AC en uchii madaila surr unguthu una na paakkkama giruunnkuthu kita nee vanthala uurrrrr",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15,
                fontFamily: "OxygenRegular",
                color: black90Color,
              ),
            ),
          ),
          SizedBox(width: 50,),
          OrderPriceWithout()
        ],
      ),
    );
  }
}
