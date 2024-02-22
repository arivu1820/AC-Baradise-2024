import 'package:acbaradise_2024/Authentication/SigninScreen.dart';
import 'package:acbaradise_2024/Screens/ACProductScreen.dart';
import 'package:acbaradise_2024/Screens/AddAddressDetailsScreen.dart';
import 'package:acbaradise_2024/Screens/AnnualContractScreen.dart';
import 'package:acbaradise_2024/Screens/HomeScreen.dart';
import 'package:acbaradise_2024/Screens/MyCartScreen.dart';
import 'package:acbaradise_2024/Screens/OrdersProductScreen.dart';
import 'package:acbaradise_2024/Screens/OrdersScreen.dart';
import 'package:acbaradise_2024/Screens/SelectAddressScreen.dart';
import 'package:acbaradise_2024/Screens/ServiceScreen.dart';
import 'package:acbaradise_2024/Screens/SubscriptionScreen.dart';
import 'package:acbaradise_2024/Temp/temp.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCAdvantages.dart';
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
      home: SigninScreen(),
    );
  }
}
