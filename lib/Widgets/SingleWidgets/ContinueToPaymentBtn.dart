import 'package:acbaradise_2024/Screens/PaymentScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ContinueToPayment extends StatelessWidget {
  const ContinueToPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 0.5, color: lightBlueColor),
        ),
        color: whiteColor,
      ),
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pay",
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: "LexendLight",
                  color: blackColor,
                ),
              ),
              Text(
                "₹ 5646",
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "LexendMedium",
                  color: blackColor,
                ),
              )
            ],
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentScreen(),
                    ));
              },
              child: Container(
                height: 60,
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: lightBlueColor,
                ),
                child: Center(
                  child: Text(
                    "Continue To Payment",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "LexendLight",
                      color: blackColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
