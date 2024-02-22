import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 

class t extends StatelessWidget {
  const t({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          decoration: BoxDecoration(
              border: Border.all(
            color: lightGray80Color,
            width: 1.0,
          )),
          child: Row(
            children: [
              Expanded(
                flex: 1, // Adjust flex factor as needed for proper sizing
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "#zkigog751d51df00edkne",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: "OxygenRegular",
                      fontSize: 12,
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Clipboard.setData(
                          ClipboardData(text: "#zkigog751d51df00edkne"))
                      .then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Copied to clipboard')),
                    );
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: lightGray80Color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Wrap content size
                    children: [
                      Icon(Icons.copy, size: 15, color: blackColor),
                      const SizedBox(width: 8),
                      Text(
                        "Copy",
                        style: TextStyle(
                          fontFamily: "OxygenRegular",
                          fontSize: 12,
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Separate Container for Service Claim outside of the first Row
            ],
          ),
        ),
      ],
    );
  }
}
