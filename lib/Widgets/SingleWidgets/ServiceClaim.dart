import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class ServiceClaim extends StatelessWidget {
  const ServiceClaim({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(
                'Service Claim ',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "LexendMedium",
                  color: blackColor,
                ),
              ),
              content: const Text(
                'Are you sure you want to Claim you Service? If you have any query about this feel free to call help line. ',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "LexendRegular",
                  color: blackColor,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Cancel',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "LexendRegular",
                        color: darkBlueColor,
                      )),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Confirm',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "LexendRegular",
                        color: darkBlueColor,
                      )),
                  onPressed: () {
                    // Handle the actual removal logic here
                    Navigator.of(context)
                        .pop(); // Close the dialog after removal
                  },
                ),
              ],
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 10, bottom: 10),
        height: 30,
        width: 90,
        decoration: BoxDecoration(
          color: Color(0xFF45C9A5),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Center(
          child: Text(
            "Service Claim",
            style: TextStyle(
              fontFamily: "OxygenBold",
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
