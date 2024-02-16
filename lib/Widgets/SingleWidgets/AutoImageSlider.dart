import 'package:flutter/material.dart';
import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  int activePage = 0;

  final List<String> imageUrls = [
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.rvSWtRd_oPRTwDoTCmkP5gAAAA%26pid%3DApi&f=1&ipt=4eff9a5d7d22249208e9472e985283aee53c7c785e9265810c51f0f39de585bc&ipo=images",
    "http://allpicts.in/wp-content/uploads/2018/03/Natural-Images-HD-1080p-Download-with-Keyhole-Arch-at-Pfeiffer-Beach.jpg",
    "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.hdwallpaper.nu%2Fwp-content%2Fuploads%2F2015%2F09%2Ftropical_beach_blue_summer_sea_emerald_sand_hd-wallpaper-1701606.jpg&f=1&nofb=1&ipt=6eb95fc58404f4ef582fa656596438a8313acf27a78c036f2657e601cba7be53&ipo=images",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.OjNHJL6A-Lzw_jLJfFgtMwHaEK%26pid%3DApi&f=1&ipt=9f19fe8349e515790867030de18da3ba6f4cae0548d5195b66004453fb7916d0&ipo=images",
    "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.bircyBDvJOcKd3mkR6ramwHaEK%26pid%3DApi&f=1&ipt=5909f3cdfdc42fb7effd2baabc4312074c2866f899860a96cf501dc9d1f51cf4&ipo=images",
  ];

  List<Widget> generateImageContainers(List<String> imageUrls) {
    return imageUrls.map((imageUrl) {
      return Container(
        margin: EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }).toList();
  }

  // Modified imageIndicator method
  Widget imageIndicator(imagesLength) {
    List<Widget> indicators = List<Widget>.generate(imagesLength, (index) {
      return Container(
        width: 20,
        height: 5,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft:
                      (index == 0) ? Radius.circular(10) : Radius.circular(0),
                  bottomLeft:
                      (index == 0) ? Radius.circular(10) : Radius.circular(0),
                  topRight: (index == imagesLength - 1)
                      ? Radius.circular(10)
                      : Radius.circular(0),
                  bottomRight: (index == imagesLength - 1)
                      ? Radius.circular(10)
                      : Radius.circular(0),
                ),
                color: lightGray50Color,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: (index == 0 || index == activePage)
                      ? Radius.circular(10)
                      : Radius.circular(0),
                  bottomLeft: (index == 0 || index == activePage)
                      ? Radius.circular(10)
                      : Radius.circular(0),
                  topRight: (index == imagesLength - 1 || index == activePage)
                      ? Radius.circular(10)
                      : Radius.circular(0),
                  bottomRight:
                      (index == imagesLength - 1 || index == activePage)
                          ? Radius.circular(10)
                          : Radius.circular(0),
                ),
                color: activePage == index ? lightBlueColor : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: generateImageContainers(
              imageUrls), // You should have imageUrls defined.
          options: CarouselOptions(
            height: 250.0,
            enlargeCenterPage: true,
            autoPlay: false,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            viewportFraction: 1,
            onPageChanged: (index, _) {
              setState(() {
                activePage = index;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: imageIndicator(imageUrls.length),
        ),
      ],
    );
  }
}
