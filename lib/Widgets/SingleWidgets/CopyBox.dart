// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart'; // Required for clipboard functionality
// import 'package:acbaradise_2024/Theme/Colors.dart'; // Your color definitions

// class CopyBox extends StatelessWidget {
//   const CopyBox({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       // Ensures that the widget doesn't overlap with system UI
//       child: Container(
//         margin: const EdgeInsets.only(
//             right: 10, bottom: 10), // Add a bottom margin for safety
//         height: 30,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5.0),
//           border: Border.all(
//             color: lightGray80Color,
//             width: 1.0,
//           ),
//         ),
//         child: Row(
//           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10),
//                 child: Text(
//                   "#zkigog751d51df00edkne",
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     fontFamily: "OxygenRegular",
//                     fontSize: 12,
//                     color: blackColor,
//                   ),
//                 ),
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 Clipboard.setData(ClipboardData(text: "#zkigog751d51df00edkne"))
//                     .then((_) {
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Copied to clipboard')),
//                   );
//                 });
//               },
//               child: Container(
//                 height: 30,
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 decoration: BoxDecoration(
//                   color: lightGray80Color,
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min, // Wrap content size
//                   children: [
//                     Icon(Icons.copy, size: 15, color: blackColor),
//                     const SizedBox(width: 8),
//                     Text(
//                       "Copy",
//                       style: TextStyle(
//                         fontFamily: "OxygenRegular",
//                         fontSize: 12,
//                         color: blackColor,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 10, right: 10),
//               height: 30,
//               width: 90,
//               decoration: BoxDecoration(color: leghtGreen),
//               child: Center(
//                 child: Text(
//                   "Service Claim",
//                   style: TextStyle(
//                       fontFamily: "OxygenBold",
//                       fontSize: 12,
//                       color: whiteColor),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Required for clipboard functionality
import 'package:acbaradise_2024/Theme/Colors.dart'; // Your color definitions

class CopyBox extends StatelessWidget {
  const CopyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded( // Wrapping the Container with Expanded to ensure it fills the available space
      child: Container(
        margin: const EdgeInsets.only(right: 10, bottom: 10),
        height: 30,
        decoration: BoxDecoration(
          color: whiteColor, // Assuming whiteColor is defined in your theme
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: lightGray80Color, // Assuming lightGray80Color is defined in your theme
            width: 1.0,
          ),
        ),
        child: Row(
          children: [
            Expanded( // Allowing the text to fill the available space
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "#zkigog751d51df00edkne",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontFamily: "OxygenRegular",
                    fontSize: 12,
                    color: blackColor, // Assuming blackColor is defined in your theme
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: "#zkigog751d51df00edkne"))
                    .then((_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Copied to clipboard')),
                  );
                });
              },
              child: Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: lightGray80Color, // Assuming lightGray80Color is defined in your theme
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Wrap content size
                  children: [
                    Icon(Icons.copy, size: 15, color: blackColor), // Assuming blackColor is defined in your theme
                    const SizedBox(width: 8),
                    Text(
                      "Copy",
                      style: TextStyle(
                        fontFamily: "OxygenRegular",
                        fontSize: 12,
                        color: blackColor, // Assuming blackColor is defined in your theme
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

