import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class SelectAnAddress extends StatelessWidget {
  const SelectAnAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,top: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select an Address",
            style: const TextStyle(
              fontFamily: "OxygenBold",
              fontSize: 18,
              color: blackColor,
            ),
          ),
                        const SizedBox(height: 20,),
    
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),boxShadow: [
              BoxShadow(
                color:  darkBlue50Color,
                offset: Offset(0, 0),
                blurRadius:4.0,
                spreadRadius: 0,
              ),
            ],color: whiteColor),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.map_sharp)),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    "21, dataasdfjalsdjflsdflsdjlfjsdaksdfjsadlf",
                    maxLines: 1,
              overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontFamily: "OxygenRegular",
                      fontSize: 14,
                      color: blackColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Change",
                      style: const TextStyle(
                        fontFamily: "OxygenBold",
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
