import 'package:flutter/material.dart';

class DonutUICustomBG extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Color(0xFFEFF5F6);
    canvas.drawPath(mainBackground, paint);

    final Paint hdrPaint = Paint()..color = Colors.white;
    final Path hdrPath = Path();
    hdrPath.moveTo(0, 0);
    hdrPath.lineTo(size.width * 0.40, 0);
    hdrPath.quadraticBezierTo(
      size.width * 0.90,
      20.0,
      size.width,
      size.height * 0.32,
    );
    hdrPath.quadraticBezierTo(
      size.width,
      size.height * 0.40,
      size.width * 0.90,
      size.height * 0.40,
    );
    hdrPath.lineTo(25, size.height * 0.40);

    hdrPath.quadraticBezierTo(
      0,
      size.height * 0.40,
      0,
      size.height * 0.35,
    );

    hdrPath.close();
    canvas.drawPath(
      hdrPath,
      hdrPaint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
