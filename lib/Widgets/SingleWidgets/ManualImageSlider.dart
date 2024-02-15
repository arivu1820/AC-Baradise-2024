import 'package:flutter/material.dart';

class ManualImageSlider extends StatefulWidget {
  @override
  _ManualImageSliderState createState() => _ManualImageSliderState();
}

class _ManualImageSliderState extends State<ManualImageSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              // Add your image widgets here
              Image.asset('Assets/Icons/AC_Baradise_icon.png', fit: BoxFit.cover),
              Image.asset('Assets/Icons/AC_Baradise_icon.png', fit: BoxFit.cover),
              // Add more images as needed
            ],
          ),
        ),
        SizedBox(height: 10), // Adjust the space as needed

        // Position Indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            // Number of pages in the PageView
            2, // Adjust based on the number of images
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.blue : Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
