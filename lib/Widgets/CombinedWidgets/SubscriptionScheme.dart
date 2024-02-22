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
  bool _isClaim = true;
  bool isService = true;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: AnimatedContainer(
        duration: Duration(seconds: 0),
        width: double.infinity,
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        padding: EdgeInsets.only(top: 20, left: 15, right: 15,bottom: 5),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: lightBlue75Color,
            width: 1,
          ),
        ),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    "1 annual service not yet completed",
                    // textAlign: TextAlign.center,
                    
                    style: TextStyle(
                      color: leghtGreen,
                      fontFamily: "OxygenRegular",
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
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
            if (_isExpanded)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: List.generate(
                    4,
                    (index) => MoreViewSubscriptionScheme(isService: true, ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
