import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff1D262B),
      width: MediaQuery.of(context).size.width * 0.8,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xff1D262B)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/model/logo.jpg',
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                    ),
                  ),
                  Text('Nayıs Tekstil',style: GoogleFonts.playfairDisplay(color: Colors.white, fontSize: 25),)
                ],
              ),),
          ListTile(
            title: const Text(
              'Ana Sayfa',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              context.beamToNamed('/');
              
              
              },
          ),
          ListTile(
            title: const Text(
              'Hakkımızda',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              context.beamToNamed('/hakkimizda');

            },
          ),
          ListTile(
            title: const Text(
              'Ürünlerimiz',
              style: TextStyle(color: Colors.white),
            ),
            onTap: ()  {
              context.beamToNamed('/urunlerimiz');
              
            },
          ),
          ListTile(
            title: const Text(
              'İletişim',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              context.beamToNamed('/iletisim');

            },
          ),
          ListTile(
            title: const Text(
              'Mağaza',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              context.beamToNamed('/magaza');

            },
          ),
          const SizedBox(height: 20,),
          ListTile(
            leading: SizedBox(width: 30,height: 30,child: Image.asset('assets/model/instagram.png'),),
            title: const Text(
              'nayis_hom',
              style: TextStyle(color: Colors.white),
            ),            
          ),
          const ListTile(
            leading: Icon(Icons.call,color: Colors.white,size: 25,),
            title: Text(
              '0534 273 87 45',
              style: TextStyle(color: Colors.white),
            ),
            
          ),
        ],
      ),
    );
  }
}
