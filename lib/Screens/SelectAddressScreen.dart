import 'package:acbaradise_2024/Widgets/CombinedWidgets/AddressContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CommonBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SimplyExpand.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class SelectAddressScreen extends StatelessWidget {
  const SelectAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: whiteColor,

      appBar: AppBar(
        title: const Text(
          "Select Address",
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
      body: Column(
        children: [
          AddressContainer(
              Address:
                  "21, Sabari Street, Nesapakkam,. K.K. Nagar, Chennaffi, 600 053.",
              Contact: "6932582145"),
              CommonBtn(BtnName: "Add New Address", function: () {}),
        ],
      ),
    );
  }
}
