import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class CostContainer extends StatelessWidget {
  const CostContainer({super.key});

  @override
  Widget build(BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(left: 20,right: 20,top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
      
            BoxShadow(
              color: darkBlue50Color,
              offset: Offset(0, 0),
              blurRadius: 4.0,
              spreadRadius: 0,
            ),
          ],
          color: whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        3,
                        (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              "Cooling Capacity $index",
                              style: TextStyle(
                                fontFamily: "LexendMedium",
                                fontSize: 14,
                                color: blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(
                        3,
                        (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              "402$index",
                              style: TextStyle(
                                fontFamily: "LexendLight",
                                fontSize: 14,
                                color: blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          
              Container(height: 1,width: screenWidth - 60,color: lightGrayColor,)
             ,
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "To Pay",
                  style: TextStyle(
                    fontFamily: "LexendLight",
                    fontSize: 14,
                    color: blackColor,
                  ),
                ),
              ),
              Text(
                "₹ 5,988",
                style: TextStyle(
                  fontFamily: "LexendLight",
                  fontSize: 14,
                  color: blackColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
