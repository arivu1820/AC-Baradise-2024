import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrdersMore.dart';
import 'package:flutter/material.dart';

class OrdersProductMore extends StatelessWidget {
  const OrdersProductMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
        width: double.infinity,
        height: 400,
        color: darkBlue25Color,
        child: Column(
          children: [
            
              Container(height: 1,width: double.infinity,color: lightGrayColor,margin: EdgeInsets.fromLTRB(30, 20, 30, 30),)
             ,
          
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OrdersMore(heading: "heading", description: "description"),
                Expanded(
                    child: SizedBox(
                  width: 40,
                )),
                OrdersMore(
                    heading: "heading",
                    description: "descriptionksflsfosflnsf"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OrdersMore(heading: "heading", description: "description"),
                Expanded(
                    child: SizedBox(
                  width: 40,
                )),
                OrdersMore(
                    heading: "heading",
                    description: "descriptionksflsfosflnsf"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                OrdersMore(heading: "heading", description: "description"),
                Expanded(
                    child: SizedBox(
                  width: 40,
                )),
                OrdersMore(
                    heading: "heading",
                    description: "descriptionksflsfosflnsf"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
