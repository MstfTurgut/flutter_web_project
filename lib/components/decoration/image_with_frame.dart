
import 'package:flutter/material.dart';

import 'border_painter.dart';
import 'themes.dart';

class ImageWithFrame extends StatelessWidget {
  const ImageWithFrame({
    Key? key,
    this.height,
    required this.width,
    required this.imagePath,
  }) : super(key: key);

  final String imagePath;
  final double width;
  final double? height;
  
  @override
  Widget build(BuildContext context) {

    return CustomPaint(
      foregroundPainter: BorderPainterCornerFrames(),
      child: Container(
        color: ThemeColors.themeCardColor,                      
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          height: (height == null)?null:height,
          width: width,
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
