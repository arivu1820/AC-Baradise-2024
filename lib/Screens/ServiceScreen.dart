import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AllServicesContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/GeneralService.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/GeneralServiceContentContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/InstallUninstall.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/Repair.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/WetWash.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicePageBanner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicesContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicesForYouText.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AC Service and Repair",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ServicePageBanner(),
            const SizedBox(
              height: 10,
            ),
            ServicesForYouText(),
            AllServicesContainer(),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.5,
              color: lightGrayColor,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralService(),
            const SizedBox(
              height: 10,
            ),
            WetWash(),
            const SizedBox(
              height: 10,
            ),
            Repair(),
            const SizedBox(
              height: 10,
            ),
            InstallUninstall(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
