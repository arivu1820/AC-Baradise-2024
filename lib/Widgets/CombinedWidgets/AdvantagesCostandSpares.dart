import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AMCAdvantages.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AMCTotalSparesContainer.dart';
import 'package:flutter/material.dart';

class AdvantagesCostandSpares extends StatefulWidget {
  AdvantagesCostandSpares({super.key});

  @override
  State<AdvantagesCostandSpares> createState() => _AdvantagesCostandSparesState();
}

class _AdvantagesCostandSparesState extends State<AdvantagesCostandSpares> {
  bool isTapped = false;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: isTapped ? 200 : 60,
          width: double.infinity,
          color: opplightBlue10Color,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20,top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text(
                        "Total spares can be added",
                        style: const TextStyle(
                            fontFamily: "LexendMedium",
                            fontSize: 16,
                            color: blackColor),
                      ),
                    ),
                    Expanded(
                        child: const SizedBox(
                      width: 10,
                    )),
                    GestureDetector(
                      onTap: () => setState(() {
                        isSelected = !isSelected;
                      }),
                      child: isSelected?Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: darkBlueColor)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("Assets/Icons/checked.png",width: 30,height: 30,color: darkBlueColor,),
                            ),
                      ):Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: darkBlueColor)),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                                              isTapped = !isTapped;

                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: isTapped ? Image.asset(
                          "Assets/Icons/Arrow_2.png",
                          width: 20,
                          height: 20,
                        ):Image.asset(
                          "Assets/Icons/ArrowRight.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if(isTapped)
                 AMCTotalSparesContainer()
            ],
          ),
        ),
        Container(
          color: whiteColor,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: const SizedBox()),
                        Text(
                          "23% off",
                          style: const TextStyle(
                              fontFamily: "LexendRegular",
                              fontSize: 18,
                              color: darkBlueColor),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "₹" + "34,990",
                          style: const TextStyle(
                              fontFamily: "LexendMedium",
                              fontSize: 30,
                              color: blackColor),
                        ),
                        Text(
                          "₹" + "39,990",
                          style: const TextStyle(
                              fontFamily: "LexendLight",
                              decoration: TextDecoration.lineThrough,
                              fontSize: 18,
                              color: blackColor),
                        ),
                      ],
                    )
                  ],
                ),
                width: 180,
                height: 100,
              ),
              Expanded(
                  child: Container(
                height: 100,
                color: darkBlueColor,
                child: Center(
                    child: Text(
                  "Add to cart",
                  style: const TextStyle(
                      fontFamily: "LexendMedium",
                      fontSize: 16,
                      color: blackColor),
                )),
              ))
            ],
          ),
          height: 100,
          width: double.infinity,
        )
      ],
    );
  }
}
