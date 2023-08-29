import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';


Row buildDesktopAppBarRow(BuildContext context) {
  return Row(
    children: [
      TextButton(
          onPressed: () {
            context.beamToNamed('/');
          },
          child: const Text('Ana Sayfa',
              style: TextStyle(color: Colors.white))),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05),

      TextButton(
          onPressed: () {

            context.beamToNamed('/hakkimizda');

          },
          child: const Text('Hakkımızda',
              style: TextStyle(color: Colors.white))),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05),

      TextButton(
          onPressed: () {
            context.beamToNamed('/urunlerimiz');
          },
          child: const Text('Ürünlerimiz',
              style: TextStyle(color: Colors.white))),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05),

      TextButton(
          onPressed: () {
            context.beamToNamed('/iletisim');
          },
          child: const Text('İletişim',
              style: TextStyle(color: Colors.white))),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05),
      TextButton(
          onPressed: () {
            context.beamToNamed('/magaza');
            
          },
          child: const Text('Mağaza',
              style: TextStyle(color: Colors.white))),
    ],);
}