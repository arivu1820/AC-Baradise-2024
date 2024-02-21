import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AllServicesContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/GeneralService.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/InstallUninstall.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/Repair.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/WetWash.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicePageBanner.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ServicesForYouText.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  final GlobalKey generalServiceKey = GlobalKey();
  final GlobalKey WetWashKey = GlobalKey();
  final GlobalKey RepairKey = GlobalKey();
  final GlobalKey InstallUninstallKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppbarWithCart(PageName: "Service's"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ServicePageBanner(),
            const SizedBox(
              height: 10,
            ),
            ServicesForYouText(),
            GestureDetector(
              onTap: () {
                if (generalServiceKey.currentContext != null) {
                  Scrollable.ensureVisible(
                    generalServiceKey.currentContext!,
                    alignment: 0.05,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: AllServicesContainer(
                callgeneralServiceKey: (key) {
                  onTapCallbackForService("General Service", key);
                },
                callwetwashKey: (key) {
                  onTapCallbackForService("Wet Wash", key);
                },
                callrepairKey: (key) {
                  onTapCallbackForService("Repair", key);
                },
                callinstalluninstallKey: (key) {
                  onTapCallbackForService("Install Uninstall", key);
                },
                generalServiceKey: generalServiceKey,
                wetWashKey: WetWashKey,
                repairKey: RepairKey,
                installUninstallKey: InstallUninstallKey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 0.5,
              color: lightGrayColor,
            ),
            const SizedBox(
              height: 10,
            ),
            GeneralService(
              key: generalServiceKey,
            ),
            const SizedBox(
              height: 10,
            ),
            WetWash(
              key: WetWashKey,
            ),
            const SizedBox(
              height: 10,
            ),
            Repair(
              key: RepairKey,
            ),
            const SizedBox(
              height: 10,
            ),
            InstallUninstall(
              key: InstallUninstallKey,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

void onTapCallbackForService(String serviceName, GlobalKey key) {
  if (key.currentContext != null) {
    Scrollable.ensureVisible(
      key.currentContext!,
      alignment: 0.01,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
