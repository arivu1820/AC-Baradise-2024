import 'package:acbaradise_2024/Authentication/SigninScreen.dart';
import 'package:acbaradise_2024/Screens/SubscriptionScreen.dart';
import 'package:acbaradise_2024/Temp/temp.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AC Baradise',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: darkBlueColor),
        useMaterial3: true,
      ),
      home: Temp(),
    );
  }
}
