import 'package:acbaradise_2024/Screens/SelectAddressScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class SelectAnAddress extends StatelessWidget {
  const SelectAnAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select an Address",
            style: const TextStyle(
              fontFamily: "LexendMedium",
              fontSize: 18,
              color: blackColor,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            // padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Image.asset("Assets/Icons/mapPoint.png", height: 20,width: 20,)),
                
                Expanded(
                  child: Text(
                    "21, dataasdfjalsdjflsdflsdjlfjsdaksdfjsadlf",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: "LexendLight",
                      fontSize: 14,
                      color: blackColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SelectAddressScreen(),
                          ));
                    },
                    child: Text(
                      "Change",
                      style: const TextStyle(
                        fontFamily: "LexendMedium",
                        fontSize: 14,
                        color: darkBlueColor,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
