import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AnnualACCard.dart';
import 'package:acbaradise_2024/Widgets/CombinedWidgets/AnnualSchemeContainer.dart';
import 'package:acbaradise_2024/Widgets/SingleWidgets/AppbarWithCart.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';

class AnnualContractScreen extends StatefulWidget {
  AnnualContractScreen({super.key});

  @override
  State<AnnualContractScreen> createState() => _AnnualContractScreenState();
}

class _AnnualContractScreenState extends State<AnnualContractScreen> {
  bool issplit = true;

  bool iswindow = false;

  bool iscassette = false;

  final GlobalKey splitACKey = GlobalKey();

  final GlobalKey windowACKey = GlobalKey();

  final GlobalKey cassetteACKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppbarWithCart(PageName: "Annual Contract",iscart: true,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              color: lightBlue25Color,
            ),
            Center(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        setState(() {
                          issplit = true;
                          iswindow = false;
                          iscassette = false;
                        }),
                        onTapCallback(splitACKey),
                      },
                      child: AnnualACCard(
                        condition: issplit,
                        name: "Split AC",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => {
                        setState(() {
                          issplit = false;
                          iswindow = true;
                          iscassette = false;
                        }),
                        onTapCallback(windowACKey)
                      },
                      child: AnnualACCard(
                        condition: iswindow,
                        name: "Window AC",
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => {
                        setState(() {
                          issplit = false;
                          iswindow = false;
                          iscassette = true;
                        }),
                        onTapCallback(cassetteACKey)
                      },
                      child: AnnualACCard(
                        condition: iscassette,
                        name: "Cassette AC",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SplitACAnnualSchemeContainer(key: splitACKey),
            WindowACAnnualSchemeContainer(key: windowACKey),
            CassetteACAnnualSchemeContainer(key: cassetteACKey),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}

class CassetteACAnnualSchemeContainer extends StatelessWidget {
  const CassetteACAnnualSchemeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) => AnnualSchemeContainer()),
      itemCount: 2,
    );
  }
}

class WindowACAnnualSchemeContainer extends StatelessWidget {
  const WindowACAnnualSchemeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) => AnnualSchemeContainer()),
      itemCount: 2,
    );
  }
}

class SplitACAnnualSchemeContainer extends StatelessWidget {
  const SplitACAnnualSchemeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) => AnnualSchemeContainer()),
      itemCount: 2,
    );
  }
}

void onTapCallback(GlobalKey key) {
  if (key.currentContext != null) {
    Scrollable.ensureVisible(
      key.currentContext!,
      alignment: 0.01,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
