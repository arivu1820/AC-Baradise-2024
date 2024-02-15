import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductACContain.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ProductCartBtn.dart';
import 'package:flutter/material.dart';

class ProductsListContainer extends StatelessWidget {
  const ProductsListContainer({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        height: 230,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: darkGrey50Color,
              width: 0.5,
            ),
            top: BorderSide(
              color: darkGrey50Color,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            ProductACContainer(),
            Container(
              width: screenWidth - 210,
              margin: const EdgeInsets.only(left: 10, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Voltas 183V Vectra Platina 4 in 1 Convertible 1.5 Ton 3 Star Inverter Split AC with Anti Dust Filter (2023 Model, Copper. Platina 4 in 1 Conv",
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontFamily: "LexendRegular",
                      color: black90Color,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Row(
                      children: [
                        Text(
                          '₹ 34,990',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "LexendRegular",
                            color: blackColor,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "M.R.P ₹ 39,990",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: "LexendRegular",
                              color: black50Color,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: black50Color,
                              decorationStyle: TextDecorationStyle.solid),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Row(
                      children: [
                        Text(
                          '(save ₹ 4,990)',
                          style: TextStyle(
                              color: darkBlueColor,
                              fontFamily: "LexendRegular",
                              fontSize: 14),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("43% off",
                            style: TextStyle(
                                color: brownColor,
                                fontFamily: "LexendRegular",
                                fontSize: 16)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ProductCartBtn()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
