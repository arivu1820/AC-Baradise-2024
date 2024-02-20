import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicesContainer.dart';
import 'package:flutter/material.dart';

class AllServicesContainer extends StatelessWidget {
  const AllServicesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20,left: 20,top: 20),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
            Column(
              children: [
                Row(
                  children: [
                  ServicesContainer(ServiceName: "General Service"),
                    const SizedBox(
                      width: 10,
                    ),
                  ServicesContainer(ServiceName: "Wet Wash"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                  ServicesContainer(ServiceName: "Repair"),
                    const SizedBox(
                      width: 10,
                    ),
                  ServicesContainer(ServiceName: "Install Uninstall"),
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 210,
              width: 170,
              decoration: BoxDecoration(
                  color: darkBlue10Color,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 20),
                    child: Text(
                      "Annual Maintenance Contract",
                      style: TextStyle(
                        fontFamily: "OxygenBold",
                        fontSize: 16,
                        color: blackColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Image.asset("Assets/Icons/Google_icon.png"),
                    width: 170,
                    height: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
