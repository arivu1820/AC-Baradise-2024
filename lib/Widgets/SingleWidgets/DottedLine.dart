// dotted_line_widget.dart

import 'package:acbaradise_2024/Theme/Colors.dart';
import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: CustomPaint(
        painter: DottedLinePainter(),
      ),
    );
  }
}

class DottedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = black50Color
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1.0;

    double dashWidth = 5.0;
    double dashSpace = 5.0;
    double startX = 0.0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
