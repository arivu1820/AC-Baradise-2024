import 'package:acbaradise_2024/Widgets/SingleWidgets/BrandsContainer.dart';
import 'package:flutter/material.dart';
class BrandsContainerRow extends StatelessWidget {
  const BrandsContainerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          BrandsContainer(),
          SizedBox(width: 10),
          BrandsContainer(),
          SizedBox(width: 10),
          BrandsContainer(),
          SizedBox(width: 10),
          BrandsContainer(),
        ],
      ),
    );
  }
}