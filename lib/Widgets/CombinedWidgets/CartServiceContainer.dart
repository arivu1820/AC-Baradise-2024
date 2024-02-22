import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/CardAddBtn.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/OrderPriceWithout.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CartServiceContainer extends StatelessWidget {
  final bool isQtyReq;

  const CartServiceContainer({Key? key, required this.isQtyReq }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemCount =
        2; // Change this to the actual count of items in your ListView

    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "General Service",
            style: const TextStyle(
              fontFamily: "LexendMedium",
              fontSize: 15,
              color: blackColor,
            ),
          ),
          Row(
            children: [
              Container(
                height: itemCount * 100 - 30,
                child: DottedLine(
                  dashLength: 2.0,
                  lineLength: double.infinity,
                  direction: Axis.vertical,
                  dashColor: black50Color,
                  dashGapLength: 2.0,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: itemCount,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(left: 10, top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Service for - Cassette AC",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontFamily: "LexendLight",
                              fontSize: 15,
                              color: blackColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        isQtyReq ? OrderPriceWithout() : CartAddBtn(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
