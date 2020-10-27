import 'package:flutter/material.dart';

class DonutUICustomBG extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.yellow;

    final rect = Rect.fromLTWH(0, 0, size.width, size.height * 0.40);

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
