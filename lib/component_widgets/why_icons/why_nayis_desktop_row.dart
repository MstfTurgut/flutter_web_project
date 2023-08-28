import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../decoration/dividers.dart';

class BuildWhysColumnForDesktop extends StatelessWidget {
  const BuildWhysColumnForDesktop
({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      const Center(child: Text('Neden NAYIS PERDE?',style: TextStyle(color: Colors.white, fontSize: 20),)),
      Dividers.dividerWithArrow(mediaSize: MediaQuery.of(context).size),

      const SizedBox(height: 30,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      const SizedBox(width: 100,),
      Column(
        children: [
          iconCircleForDesktop(icon: 'quality' , iconSize: 60),
          const SizedBox(height: 20,),
          Text('Birinci sınıf malzeme ile kaliteli ürünler.', style: GoogleFonts.roboto(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,),
      
        ],
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
      Column(
        children: [
          iconCircleForDesktop(icon: 'low-cost' , iconSize: 60),
          const SizedBox(height: 20,),
          Text('Uygun fiyatlarıyla birlikte bütçenizin dostu.', style: GoogleFonts.roboto(fontSize: 15,color: Colors.white),textAlign: TextAlign.center,),
      
        ],
      ),
      SizedBox(width: MediaQuery.of(context).size.width * 0.04),
      Column(
        children: [
          iconCircleForDesktop(icon: 'delivery' , iconSize: 60),
          const SizedBox(height: 20,),
          Text("Türkiye'nin her yerine kapıda ödeme imkanıyla hızlı kargo", style: GoogleFonts.roboto(fontSize: 15,color: Colors.white),textAlign: TextAlign.center),

        ],
      ),
      
        ],
      )

    ],
  );
  }
}

Container iconCircleForDesktop({String? icon , double? iconSize}) {
  return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: const Color.fromARGB(82, 155, 178, 201),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(child: Image.asset('assets/model/$icon.png',height: iconSize,width: iconSize,)),
    );
}