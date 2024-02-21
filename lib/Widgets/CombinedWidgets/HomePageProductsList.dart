import 'package:acbaradise_2024/Screens/ACProductScreen.dart';
import 'package:acbaradise_2024/Screens/ProductListScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/HomePageSeeMoreContainer.dart';
import 'package:flutter/material.dart';

class HomePageProductsList extends StatelessWidget {
  final String ProductName;

  HomePageProductsList({required this.ProductName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              ProductName,
              style: const TextStyle(
                fontFamily: "LexendRegular",
                fontSize: 14,
                color: blackColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return index != 3
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            boxShadow: [
                              BoxShadow(
                                color: darkBlue25Color,
                                offset: Offset(0, 0),
                                blurRadius: 3.0,
                                spreadRadius: 0,
                              ),
                            ],
                            color: whiteColor,
                          ),
                          margin: EdgeInsets.only(
                              top: 5, bottom: 5, left: index == 0 ? 20 : 10),
                          height: 120,
                          width: 180,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          ACProductScreen(ProductName: "VOLTAS 183V Vectra Platina 4 in 1 Convertible 1.5 Ton lelia VOLTAS 183V Vectra Platina 4 in 1 Convertible 1.5 Ton lelian"),
                                              
                                    ));
                                  },
                                  child: Container(
                                    width: 180,
                                    height: 90,
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Image.asset(
                                        "Assets/Icons/Google_icon.png"),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "VOLTAS 183V Vectra Platina 4 in 1 Convertible 1.5 Ton lelia VOLTAS 183V Vectra Platina 4 in 1 Convertible 1.5 Ton lelian",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: "LexendRegular",
                                    fontSize: 11,
                                    color: blackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductListScreen(
                                      ProductName: ProductName)),
                            );
                          },
                          child: HomePageSeeMoreContainer());
                },
                itemCount: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
