import 'package:acbaradise_2024/Screens/AnnualContractScreen.dart';
import 'package:acbaradise_2024/Screens/MyCartScreen.dart';
import 'package:acbaradise_2024/Screens/OrdersScreen.dart';
import 'package:acbaradise_2024/Screens/SubscriptionScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/DrawerChildContioner.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final String name;
  final String emailid;
  DrawerWidget({required this.name, required this.emailid});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0), bottomLeft: Radius.circular(0)),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: lightBlue50Color,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: whiteColor)),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontFamily: "LexendRegular",
                          fontSize: 15,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        emailid,
                        style: const TextStyle(
                          fontFamily: "LexendRegular",
                          fontSize: 13,
                          color: blackColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OrdersScreen(),
                ),
              );
            },
            child: DrawerChildContioner(
                name: "Orders", image: "Assets/Icons/Orders_Icon.png"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyCartScreen(),
                ),
              );
            },
            child: DrawerChildContioner(
                name: "My Cart", image: "Assets/Icons/My_Cart_Icon.png"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubscriptionScreen(),
                ),
              );
            },
            child: DrawerChildContioner(
                name: "Annual Contract Subscription",
                image: "Assets/Icons/AMC_Icon.png"),
          ),
          DrawerChildContioner(
              name: "About Us", image: "Assets/Icons/AboutUs_Icon.png"),
          DrawerChildContioner(
              name: "Support", image: "Assets/Icons/Call_Icon.png"),
        ],
      ),
    );
  }
}
