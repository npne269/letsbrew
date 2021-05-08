import 'package:coffee/globals.dart';
import 'package:flutter/material.dart';

class MyShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = kDarkBlue
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3750000, 0);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height);
    path_0.quadraticBezierTo(size.width * 0.6737500, size.height * 0.8083333,
        size.width * 0.5000000, size.height * 0.5000000);
    path_0.quadraticBezierTo(size.width * 0.4125000, size.height * 0.3366667,
        size.width * 0.3750000, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
