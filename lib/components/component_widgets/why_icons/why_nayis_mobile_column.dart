
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../decoration/dividers.dart';

class BuildWhysColumnForMobile extends StatelessWidget {
  const BuildWhysColumnForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      const Center(child: Text('Neden NAYIS PERDE?',style: TextStyle(color: Colors.white, fontSize: 20),)),

      Dividers.dividerWithArrow(mediaSize: MediaQuery.of(context).size),
      const SizedBox(height: 40,),
      iconCircleForMobile(icon: 'quality' , iconSize: 50),
      const SizedBox(height: 20,),
      Text('Birinci sınıf malzeme ile kaliteli ürünler', style: GoogleFonts.roboto(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,),
      const SizedBox(height: 50,),
      iconCircleForMobile(icon: 'low-cost' , iconSize: 50),
      const SizedBox(height: 20,),
      Text('Uygun fiyatlarıyla birlikte bütçenizin dostu', style: GoogleFonts.roboto(fontSize: 14,color: Colors.white),textAlign: TextAlign.center,),
      const SizedBox(height: 50,),
      iconCircleForMobile(icon: 'delivery' , iconSize: 50),
      const SizedBox(height: 20,),
      Text("Türkiye'nin her yerine kapıda ödeme imkanıyla hızlı kargo", style: GoogleFonts.roboto(fontSize: 14,color: Colors.white),textAlign: TextAlign.center),

    ],
  );
  }
}

Container iconCircleForMobile({String? icon , double? iconSize}) {
  return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(82, 155, 178, 201),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(child: Image.asset('assets/model/$icon.png',height: iconSize,width: iconSize,)),
    );
}





