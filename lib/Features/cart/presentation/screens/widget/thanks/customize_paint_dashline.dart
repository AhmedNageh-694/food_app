import 'package:flutter/material.dart';

class CustomizeDotLineWithTwoCircle extends StatelessWidget {
  const CustomizeDotLineWithTwoCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: MediaQuery.sizeOf(context).height * .2 + 15,
        left: 30,
        right: 30,
        child: CustomPaint(
          painter: DrawDottedhorizontalline(),
        ));
  }
}

class DrawDottedhorizontalline extends CustomPainter {
  late Paint _paint;

  DrawDottedhorizontalline() {
    _paint = Paint()
      ..color = const Color(0xffB8B8B8) // dots color
      ..strokeWidth = 2 // dots thickness
      ..strokeCap = StrokeCap.round; // dots corner edges
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (double i = 0; i < size.width; i += 15) {
      // Adjusted to stay within the widget width
      if (i % 3 == 0) {
        canvas.drawLine(Offset(i, 0.0), Offset(i + 10, 0.0), _paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
