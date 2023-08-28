import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EndingContainerForMobile extends StatelessWidget {

  const EndingContainerForMobile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    String phoneNumber = '+90 534 483 0274';
    String phoneNumber2 = '+90 212 812 8772';

    final Uri call = Uri.parse('tel:$phoneNumber');
    final Uri call2 = Uri.parse('tel:$phoneNumber2');
  
 
    return Column(     
      children: [
        const SizedBox(height: 30,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 25,),
            SizedBox(width: 30,height: 30,child: Image.asset('assets/model/instagram.png'),),
            const Text('  :  nayis_hom',style: TextStyle(fontSize: 12,color: Colors.white),),
            const Spacer(),
            
            const Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: 25,
                ),
            const Text(' : nayistekstil@gmail.com',style: TextStyle(fontSize: 12,color: Colors.white),),
            
            const SizedBox(width: 25),
            
          ],
        ),
        const SizedBox(height: 10,),
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 25),
            const Icon(
                  Icons.call,
                  color: Colors.white,
                  size: 25,
                ),
            GestureDetector(
              onTap: () {
                launchUrl(call2);
              },
              child: const Text(' : 0212 812 87 72',style: TextStyle(fontSize: 12,color: Colors.white),)), 
            const Spacer(),
            const Icon(
              Icons.call,
              color: Colors.white,
              size: 25,
            ),
            GestureDetector(
              onTap: () {
                launchUrl(call);
              },
              child: const Text(' : 0534 483 02 74',style: TextStyle(fontSize: 12,color: Colors.white),)),   
            
            const SizedBox(width: 25),
          ],
        ),

        const SizedBox(height: 30,),
        const Text("Türkiye'nin Her Yerine Kapıda Ödeme İmkanıyla Hızlı Kargo Hizmeti" , style: TextStyle(fontSize: 11,color: Colors.white70),),
        const SizedBox(height: 40,),
        const Text('Nayıs Tekstil Toptan ve Perakende Satış Limited Şirketi' , style: TextStyle(fontSize: 11,color: Colors.white70),),
        const SizedBox(height: 10,),
        Container(height: 0.5, width: 20, color: Colors.white,),
        const SizedBox(height: 10,),
        const Text('Copyright © 2023 Tüm Hakları Saklıdır.' , style: TextStyle(fontSize: 11,color: Colors.white38),),
        const SizedBox(height: 50,),

      ],
    );
  }
}