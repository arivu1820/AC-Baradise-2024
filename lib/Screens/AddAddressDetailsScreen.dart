import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CommonBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/TextContainer.dart';
import 'package:flutter/material.dart';

class AddAddressDetailsScreen extends StatelessWidget {
  final TextEditingController field1Controller = TextEditingController();
  final TextEditingController field2Controller = TextEditingController();
  final TextEditingController field3Controller = TextEditingController();
  final TextEditingController field4Controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: whiteColor,

      appBar: AppbarWithCart(PageName: "Add Address Details"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              color: lightBlue25Color,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextContainer(
                    controller: field1Controller,
                    label: "House No. & Floor",
                  ),
                  TextContainer(
                    controller: field2Controller,
                    label: "Building & Block No.",
                  ),
                  TextContainer(
                    controller: field3Controller,
                    label: "Landmark & Area Name (Optional)",
                    isOptional: true,
                  ),
                  TextContainer(
                    controller: field4Controller,
                    label: "Contact No.",
                  ),
                  CommonBtn(BtnName: "Save Address", function: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
