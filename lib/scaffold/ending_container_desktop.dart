import 'package:flutter/material.dart';

class EndingContainerForDesktop extends StatelessWidget {

  const EndingContainerForDesktop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {


    return Column(     
      children: [
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 15,),
            SizedBox(width: 30,height: 30,child: Image.asset('assets/model/instagram.png'),),
            const Text('   :   nayis_hom',style: TextStyle(color: Colors.white),),
            SizedBox(width: size.width * 0.03),
            const Icon(
              Icons.call,
              color: Colors.white,
              size: 25,
            ),
            const Text('  :   0534 483 02 74',style: TextStyle(color: Colors.white),),
            SizedBox(width: size.width * 0.03),
            const Icon(
              Icons.mail,
              color: Colors.white,
              size: 25,
            ),
            const Text('  :   nayistekstil@gmail.com',style: TextStyle(color: Colors.white),),
            SizedBox(width: size.width * 0.03),
            const Icon(
              Icons.call,
              color: Colors.white,
              size: 25,
            ),
            const Text('  :   0212 812 87 72',style: TextStyle(color: Colors.white),),

          ],
        ),
        const SizedBox(height: 40,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Türkiye'nin Her Yerine Kapıda Ödeme İmkanıyla Hızlı Kargo Hizmeti", style: TextStyle(color: Colors.white70)),
            const SizedBox(width: 15,),
            Container(height: 20, width: 0.5, color: Colors.white,),
            const SizedBox(width: 15,),
            const Text('Nayıs Tekstil Toptan ve Perakende Satış Limited Şirketi' , style: TextStyle(color: Colors.white70),),
            const SizedBox(width: 15,),
            Container(height: 20, width: 0.5, color: Colors.white,),
            const SizedBox(width: 15,),
            const Text('Copyright © 2023 Tüm Hakları Saklıdır.' , style: TextStyle(color: Colors.white38),),
            
          ],
        ),
        const SizedBox(height: 40,),

      ],
    );
  }
}