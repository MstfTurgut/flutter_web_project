import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

class ColorOptionsChangeButton extends StatelessWidget {
  const ColorOptionsChangeButton(
      {required this.pageNumber,
      required this.index,
      required this.productName,
      super.key});

  final String index;
  final String productName;
  final int pageNumber;

  
  @override
  Widget build(BuildContext context) {

    bool page1Choosed = (pageNumber == 1);
    bool page2Choosed = (pageNumber == 2);
    bool page3Choosed = (pageNumber == 3);


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (page1Choosed) {
                null;
              }
              else{
                context.beamToNamed(
                    '/urunlerimiz/$index/$productName/renk-secenekleri');
              }
            },
            icon: Container(
              decoration: BoxDecoration(
                  boxShadow: const [ BoxShadow(color: Colors.black38,offset: Offset(0, 2),blurRadius: 0.3,)],
                  borderRadius:
                      const BorderRadius.horizontal(left: Radius.circular(10)),
                  color: const Color.fromARGB(255, 53, 74, 85),
                  border: Border.all(color: Colors.black45)),
              height: 25,
              width: 45,
              child:  Center(
                  child: Text(
                '1',
                style: TextStyle(color: page1Choosed?Colors.lightBlue:Colors.white70),
              )),
            )),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (page2Choosed) {
                null;
              }
              else{
                context.beamToNamed(
                    '/urunlerimiz/$index/$productName/renk-secenekleri2');
              }
            },
            icon: Container(
              decoration: BoxDecoration(
                  boxShadow: const [ BoxShadow(color: Colors.black38,offset: Offset(0, 2),blurRadius: 0.3,)],
                  color: const Color.fromARGB(255, 53, 74, 85),
                  border: Border.all(color: Colors.black45)),
              height: 25,
              width: 45,
              child: Center(
                  child: Text(
                '2',
                style: TextStyle(color: page2Choosed?Colors.lightBlue:Colors.white70),
              )),
            )),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              if (page3Choosed) {
                null;
              }
              else{
                context.beamToNamed(
                    '/urunlerimiz/$index/$productName/renk-secenekleri3');
              }
            },
            icon: Container(
              decoration: BoxDecoration(
                  boxShadow: const [ BoxShadow(color: Colors.black38,offset: Offset(0, 2),blurRadius: 0.3,)],
                  borderRadius:
                      const BorderRadius.horizontal(right: Radius.circular(10)),
                  color: const Color.fromARGB(255, 53, 74, 85),
                  border: Border.all(color: Colors.black45)),
              height: 25,
              width: 45,
              child: Center(
                  child: Text(
                '3',
                style: TextStyle(color: page3Choosed?Colors.lightBlue:Colors.white70),
              )),
            )),
      ],
    );
  }
}
