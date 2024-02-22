import 'package:acbaradise_2024/Screens/AnnualContractScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicesContainer.dart';
import 'package:flutter/material.dart';

class AllServicesContainer extends StatelessWidget {
  final Function(GlobalKey) callgeneralServiceKey;
  final Function(GlobalKey) callwetwashKey;
  final Function(GlobalKey) callrepairKey;
  final Function(GlobalKey) callinstalluninstallKey;
  final GlobalKey generalServiceKey;
  final GlobalKey wetWashKey;
  final GlobalKey repairKey;

  final GlobalKey installUninstallKey;

  const AllServicesContainer(
      {super.key,
      required this.callgeneralServiceKey,
      required this.callwetwashKey,
      required this.callrepairKey,
      required this.callinstalluninstallKey,
      required this.generalServiceKey,
      required this.wetWashKey,
      required this.repairKey,
      required this.installUninstallKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => callgeneralServiceKey(generalServiceKey),
                      child: ServicesContainer(ServiceName: "General Service"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => callwetwashKey(wetWashKey),
                      child: ServicesContainer(ServiceName: "Wet Wash"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => callrepairKey(repairKey),
                      child: ServicesContainer(ServiceName: "Repair"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => callinstalluninstallKey(installUninstallKey),
                      child:
                          ServicesContainer(ServiceName: "Install Uninstall"),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AnnualContractScreen()),
                );
              },
              child: Container(
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
                          fontFamily: "LexendMedium",
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
