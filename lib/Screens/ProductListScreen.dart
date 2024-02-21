import 'package:acbaradise_2024/Screens/ACProductScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsListContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ContentFilerContioner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ManualImageSlider.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  final String ProductName;

  ProductListScreen({required this.ProductName});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
      bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppbarWithCart(PageName: widget.ProductName),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                        print(isSelected);
                      });
                    },
                    child: ContentFilterContainer(
                      content: "1 Ton",
                      isSelected: isSelected,
                    ),
                  ),
                  
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ACProductScreen(
                          ProductName:
                              "VOLTAS 183V Vectra Platina 4 in 1 Convertible 1.5 Ton lelia VOLTAS 183V Vectra Platina 4 in 1 Convertible 1.5 Ton lelian"),
                    ));
              },
              child: ProductsListContainer())
        ],
      ),
    );
  }
}
