import 'package:acbaradise_2024/Screens/ACProductScreen.dart';
import 'package:acbaradise_2024/Screens/AddAddressDetailsScreen.dart';
import 'package:acbaradise_2024/Screens/AnnualContractScreen.dart';
import 'package:acbaradise_2024/Screens/MyCartScreen.dart';
import 'package:acbaradise_2024/Screens/OrdersMyCart.dart';
import 'package:acbaradise_2024/Screens/PaymentScreen.dart';
import 'package:acbaradise_2024/Screens/ProductListScreen.dart';
import 'package:acbaradise_2024/Screens/SubscriptionScreen.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AnnualSchemeContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartAMCContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/CartServiceContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrderService.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersAMCInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersCostContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersMyCartProduct.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersPhoneAdd.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersProductMore.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrdersSummary.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/ProductsListContainer.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/OrderServicesInCart.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/SubscriptionScheme.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/ACPContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AMCPrice.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AnnualACCard.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/MoreViewSubscriptionScheme.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CopyBox.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CostContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrderPrice.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/SerciceCount.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/T.dart';
import 'package:flutter/material.dart';

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OrdersProductMore()
    );
  }
}
