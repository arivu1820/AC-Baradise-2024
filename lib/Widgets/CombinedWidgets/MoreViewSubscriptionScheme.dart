import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CopyBox.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/DottedLine.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SerciceCount.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServiceClaim.dart';
import 'package:flutter/material.dart';

class MoreViewSubscriptionScheme extends StatelessWidget {
  final bool isService ;
  const MoreViewSubscriptionScheme({super.key, required this.isService });

  @override
  Widget build(BuildContext context) {
    final smallscreenwidth = MediaQuery.of(context).size.width < 280;
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: darkGrey50Color,
          width: 1,
        ),
      ),

      // width: double.infinity,
      margin: EdgeInsets.only(top: 0, bottom: 10, right: 5, left: 5),
      padding: EdgeInsets.only(top: 10, bottom: 0, right: 5, left: 10),
      child: Column(
        children: [
          ServiceCount(
            serviceName: "1sr Service",
          ),
          SizedBox(
            height: 10,
          ),
          ServiceCount(
            serviceName: "2nd Service",
          ),
          SizedBox(
            height: 10,
          ),
          ServiceCount(
              serviceName: "3rd Service", showImage: false, date: "Oct 2023"),
          SizedBox(
            height: 10,
          ),
          ServiceCount(
              serviceName: "4th Service", showImage: false, date: "Jan 2024"),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(right: 0, top: 10),
            height: 1,
            width: double.infinity,
            child: DottedLine(),
          ),
          FittedBox(
            child: Container(
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              child: Row(
                children: [
                  Text(
                    "To discover the advantages of this scheme ",
                    style: TextStyle(
                      color: blackColor,
                      fontFamily: "OxygenLight",
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Click Here",
                      style: TextStyle(
                        color: darkBlueColor,
                        fontFamily: "OxygenLight",
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          isService ? Row(children: [CopyBox(),smallscreenwidth? SizedBox():ServiceClaim()], ): SafeArea(child: CopyBox()),
          smallscreenwidth? ServiceClaim():SizedBox()
        ],
      ),
    );
  }
}
