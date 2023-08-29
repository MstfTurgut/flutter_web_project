
import 'package:flutter/material.dart';


class BorderPainterCornerFrames extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double cornerSide = sh * 0.1; // desirable value for corners side

    Paint paint = Paint()
      ..color = const Color.fromARGB(191, 255, 255, 255)
      ..strokeWidth = 0.8
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Path path = Path()
      ..moveTo(cornerSide, 0)
      ..lineTo(0, 0)
      ..lineTo(0, cornerSide)
      ..moveTo(cornerSide, cornerSide)
      ..moveTo(sw - cornerSide, 0)
      ..lineTo(sw, 0)
      ..lineTo(sw, cornerSide)
      ..moveTo(sw - cornerSide, cornerSide)
      ..moveTo(sw, sh - cornerSide)
      ..lineTo(sw, sh)
      ..lineTo(sw - cornerSide, sh)
      ..moveTo(sw - cornerSide, sh - cornerSide)
      ..moveTo(cornerSide, sh)
      ..lineTo(0, sh)
      ..lineTo(0, sh - cornerSide)
      ..moveTo(cornerSide, sh - cornerSide)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainterCornerFrames oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainterCornerFrames oldDelegate) => false;
}


class BorderPainterFrame extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage

    Paint paint = Paint()
      ..color = const Color.fromARGB(191, 255, 255, 255)
      ..strokeWidth = 0.6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(sw, 0)
      ..lineTo(sw, sh)
      ..lineTo(0, sh)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(BorderPainterCornerFrames oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainterCornerFrames oldDelegate) => false;
}