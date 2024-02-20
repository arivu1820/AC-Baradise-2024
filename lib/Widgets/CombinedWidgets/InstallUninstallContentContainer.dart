import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServiceAddBtn.dart';
import 'package:flutter/material.dart';

class InstallUninstallContentContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20,top: 20),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Install - Split AC",
                        style: TextStyle(
                          fontFamily: "LexendRegular",
                          fontSize: 14,
                          color: blackColor,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "₹599  ",
                              style: TextStyle(
                                fontFamily: "LexendRegular",
                                fontSize: 20,
                                color: blackColor,
                              ),
                            ),
                            TextSpan(
                              text: "₹849",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontFamily: "LexendRegular",
                                fontSize: 14,
                                color: black50Color,
                              ),
                            ),
                          ],
                        ),
                      ),
                                        const SizedBox(height: 10,),

                      Container(
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontFamily: "OxygenRegular",
                                      fontSize: 12,
                                      color: blackColor,
                                    ),
                                    children: [
                                      WidgetSpan(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 4.0),
                                          child: Text('•',
                                              style: TextStyle(fontSize: 12)),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "AC provides a cool and comfortable indoor.",
                                        style: TextStyle(
                                      fontFamily: "OxygenRegular",
                                      fontSize: 12,
                                      color: blackColor,
                                    ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                height: 200,
                child: Stack(
                  alignment: Alignment.center, // Center horizontally
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: lightBlue30Color,),
                      width: 120,
                      height: 160,
                      
                    ),
                    Positioned(top: 155, child: ServiceAddBtn()),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 50,),
              Expanded(child: Divider(thickness: 0.5,color: lightGrayColor,)),
              const SizedBox(width: 50,),
            ],
          )
        ],
      ),
    );
  }
}
