import 'package:flutter/material.dart';



IconButton buildMobileAppBarIconButton(BuildContext context) {
  return IconButton(
    padding: EdgeInsets.zero,
    icon: const Icon(
      Icons.menu,
      size: 30,
      color: Colors.white,
    ),
    onPressed: () {
      Scaffold.of(context).openDrawer();
    },
  );
}