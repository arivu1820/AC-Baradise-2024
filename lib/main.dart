import 'package:acbaradise_2024/Authentication/SigninScreen.dart';
import 'package:acbaradise_2024/Screens/ACProductScreen.dart';
import 'package:acbaradise_2024/Screens/AddAddressDetailsScreen.dart';
import 'package:acbaradise_2024/Screens/AnnualContractScreen.dart';
import 'package:acbaradise_2024/Screens/PaymentScreen.dart';
import 'package:acbaradise_2024/Screens/ProductListScreen.dart';
import 'package:acbaradise_2024/Screens/SelectAddressScreen.dart';
import 'package:acbaradise_2024/Temp/temp.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AddressContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsListContainer.dart';
import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Screens/SplashScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AC Baradise',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ACProductScreen(ProductName: "Voltas AC with 3 Ton and cover overall 1000 square feet area and keep cool"),
    );
  }
}

