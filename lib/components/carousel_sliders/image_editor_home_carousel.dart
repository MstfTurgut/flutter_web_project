

import 'package:flutter/material.dart';

class ImageEditorForCarousel extends StatelessWidget {

  const ImageEditorForCarousel({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
  margin: const EdgeInsets.all(5.0),
  child: Stack(
    fit: StackFit.expand,
    children: <Widget>[
      Image(image: AssetImage(imagePath),fit: BoxFit.cover),
      Positioned(
        bottom: 0.0,
        left: 0.0,
        right: 0.0,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(200, 0, 0, 0),
                Color.fromARGB(0, 0, 0, 0)
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          padding: const EdgeInsets.symmetric(
              vertical: 10.0, horizontal: 20.0),
        ),
      ),
    ],
  ),
);
  }
}