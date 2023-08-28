import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class DoubleFabRow extends StatelessWidget {
  const DoubleFabRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String phoneNumber = '+90 534 483 0274';

    final Uri whatsapp = Uri.parse('https://wa.me/$phoneNumber');
    final Uri call = Uri.parse('tel:$phoneNumber');


    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
       Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 0, 20),
        width: 50,
        height: 50,
        child: FittedBox(
          child: FloatingActionButton(
              heroTag: UniqueKey(),
               backgroundColor: Colors.green,
               onPressed: () {
                launchUrl(whatsapp);

               },
               child: const FaIcon(FontAwesomeIcons.whatsapp ,size: 40,),
             ),
        ),
      ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          width: 50,
          height: 50,

          child: FittedBox(
            child: FloatingActionButton(
              heroTag: UniqueKey(),             
              backgroundColor: Colors.green,
              onPressed: () {
                launchUrl(call);

              },
              child: const Icon(Icons.call,size: 30,),
            ),
          ),
        ),


    ],
    );
  }
}
