import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/GeneralServiceContentContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/InstallUninstallContentContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/RepairContentContainer.dart';
import 'package:flutter/material.dart';

class InstallUninstall extends StatelessWidget {
  const InstallUninstall({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Install Uninstall",
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "LexendRegular",
              color: blackColor,
            ),
          ),
        ),
        InstallUninstallContentContainer(),
      ],
    );
  }
}
