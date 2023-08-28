import 'package:flutter/material.dart';

class Dividers {
  static Container simpleDivider({required Size mediaSize}) {
    return Container(
      width: (mediaSize.width > 1000)?mediaSize.width * 0.8:mediaSize.width * 0.9,
      color: Colors.white70,
      height: 0.5,
    );
  }

  static Row dividerWithArrow({required Size mediaSize}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          height: 0.5,
          width: mediaSize.width * 0.35,
        ),
        const Icon(
          Icons.expand_more,
          color: Colors.white,
          size: 30,
        ),
        Container(
          color: Colors.white,
          height: 0.5,
          width: mediaSize.width * 0.35,
        ),
      ],
    );
  }
}
