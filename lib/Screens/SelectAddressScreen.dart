import 'package:acbaradise_2024/Screens/AddAddressDetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AddressContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CommonBtn.dart';

class SelectAddressScreen extends StatefulWidget {
  SelectAddressScreen({super.key});

  @override
  State<SelectAddressScreen> createState() => _SelectAddressScreenState();
}

class _SelectAddressScreenState extends State<SelectAddressScreen> {
  List<bool> isSelectedList = List.generate(10, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: const Text(
          "Select Address",
          style: TextStyle(
            fontFamily: "LexendLight",
            fontSize: 20,
            color: blackColor,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Dark2ligthblueLRgradient,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    isSelectedList = List.generate(
                      10,
                      (i) => i == index ? true : false,
                    );
                  });
                },
                child: AddressContainer(
                  Address:
                      "21, Sabari Street, Nesapakkam,. K.K. Nagar, Chennaffi, 600 053.",
                  Contact: "6932582145",
                  isSelected: isSelectedList[index],
                  onDelete: () {
                    
                  },
                ),
              )),
              itemCount: 10,
            ),
          ),
          CommonBtn(
            BtnName: "Add New Address",
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddAddressDetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
