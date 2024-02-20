import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/MoreViewSubscriptionScheme.dart';
import 'package:flutter/material.dart';

class SubscriptionScheme extends StatefulWidget {
  const SubscriptionScheme({Key? key}) : super(key: key);

  @override
  _SubscriptionSchemeState createState() => _SubscriptionSchemeState();
}

class _SubscriptionSchemeState extends State<SubscriptionScheme> {
  bool _isExpanded = false;
  

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 0
      ),
      height: _isExpanded ? 665 : 100,
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: lightBlue75Color,
          width: 1,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 25,
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "Split AC - Scheme 1",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "OxygenRegular",
                        fontSize: 18,
                        color: blackColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0,
                  width: 50,
                ),
                Text(
                  "Qty: 3",
                  style: TextStyle(
                    fontFamily: "OxygenRegular",
                    fontSize: 14,
                    color: blackColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "1 annual service not yet completed",
                  style: TextStyle(
                    color: leghtGreen,
                    fontFamily: "OxygenRegular",
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                    // Show message based on _isExpanded state
                  },
                  icon: Container(
                    width: 20,
                    height: 10,
                    child: Image.asset(
                      _isExpanded
                          ? "Assets/Icons/2_Arrow.png"
                          : "Assets/Icons/Arrow_2.png",
                    ),
                  ),
                ),
              ],
            ),
            // Conditionally display additional content based on _isExpanded
            if (_isExpanded)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    MoreViewSubscriptionScheme(),
                    MoreViewSubscriptionScheme()
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
