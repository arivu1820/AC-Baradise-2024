import 'package:acbaradise_2024/Widgets/SingleWidgets/AnnualACCard.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AnnualSchemeContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class AnnualContractScreen extends StatelessWidget {
  const AnnualContractScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppbarWithCart(PageName: "Annual Contract"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              color: lightBlue25Color,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnnualACCard(
                    condition: true,
                    name: "Split AC",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AnnualACCard(
                    condition: false,
                    name: "Window AC",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AnnualACCard(
                    condition: false,
                    name: "Cassette AC",
                  ),
                ],
              ),
            ),
            const AnnualSchemeContainer(),
            const AnnualSchemeContainer(),
            const AnnualSchemeContainer(),
            const AnnualSchemeContainer(),
          ],
        ),
      ),
    );
  }
}
