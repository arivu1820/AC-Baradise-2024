import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CardAddBtn.dart';
import 'package:flutter/material.dart';

class CartAMCContainer extends StatelessWidget {
  const CartAMCContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: [
          
          Expanded(
            child: Text(
              "asdfasdfsafdsfasdfasdfasdfasdfasdfsdfasdfasdfasdfasdfsdafsdafasdfasdf",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontFamily: "OxygenRegular",
                fontSize: 15,
                color: blackColor,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
         
             CartAddBtn(),
   
        ],
      ),
    );
  }
}