import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AnnualSchemeContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/SubscriptionScheme.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AnnualACCard.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/MoreViewSubscriptionScheme.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CopyBox.dart';
import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MoreViewSubscriptionScheme(),
    );
  }
}
