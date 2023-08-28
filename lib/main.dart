import 'package:flutter/material.dart';
import 'package:nayis_home/pages/aboutpage.dart';
import 'package:nayis_home/pages/all_productspage.dart';
import 'package:nayis_home/pages/color_options2_main.dart';
import 'package:nayis_home/pages/color_options3_main.dart';
import 'package:nayis_home/pages/color_options_main.dart';
import 'package:nayis_home/pages/contactpage.dart';
import 'package:nayis_home/pages/more_images_main.dart';
import 'package:nayis_home/pages/productx_main_page.dart';
import 'package:nayis_home/pages/homepage.dart';
import 'package:nayis_home/pages/storepage.dart';
import 'package:beamer/beamer.dart';



void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  

  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => BeamPage(
          key: UniqueKey(),
          title: ' Ana Sayfa - Nayıs Tekstil',
          child: const HomePage()),
        '/hakkimizda': (context, state, data) => BeamPage(
          key: UniqueKey(),
          title: 'Hakkımızda - Nayıs Tekstil',
          child: const AboutPage()),
        '/iletisim': (context, state, data) => BeamPage(
          key: UniqueKey(),
          title: 'İletişim - Nayıs Tekstil',
          child: const ContactPage()),
        '/magaza': (context, state, data) => BeamPage(
          key: UniqueKey(),
          title: 'Mağaza - Nayıs Tekstil',
          child: const StorePage()),
        '/urunlerimiz': (context, state, data) => BeamPage(
          key: UniqueKey(),
          title: 'Ürünlerimiz - Nayıs Tekstil',
          child: const AllProductsPage()),
        '/urunlerimiz/:index/:productName': (context, state, data) {

          final productName = state.pathParameters['productName']!;
          final index = state.pathParameters['index']!;

          String removeLines(String str) {
            return str.replaceAll('-', ' ');
          }

          return BeamPage(
            key: UniqueKey(),
            title: '${removeLines(productName)} - Nayıs Tekstil',
            child: ProductXMainPage(productName: productName,index: index,));

        },
       
        '/urunlerimiz/:index/:productName/renk-secenekleri':(context,state,data) {

          final productName = state.pathParameters['productName']!;
          final index = state.pathParameters['index']!;

          String removeLines(String str) {
            return str.replaceAll('-', ' ');
          }

          return BeamPage(
            key: UniqueKey(),
            title: '${removeLines(productName)} - Nayıs Tekstil',
            child: ColorOptionsMainPage(productName: productName,index: index,));

        },

        '/urunlerimiz/:index/:productName/renk-secenekleri2':(context,state,data) {

          final productName = state.pathParameters['productName']!;
          final index = state.pathParameters['index']!;

          String removeLines(String str) {
            return str.replaceAll('-', ' ');
          }

          return BeamPage(
            key: UniqueKey(),
            title: '${removeLines(productName)} - Nayıs Tekstil',
            child: ColorOptions2MainPage(productName: productName,index: index,));

        },
        '/urunlerimiz/:index/:productName/renk-secenekleri3':(context,state,data) {

          final productName = state.pathParameters['productName']!;
          final index = state.pathParameters['index']!;

          String removeLines(String str) {
            return str.replaceAll('-', ' ');
          }

          return BeamPage(
            key: UniqueKey(),
            title: '${removeLines(productName)} - Nayıs Tekstil',
            child: ColorOptions3MainPage(productName: productName,index: index,));

        },
        '/urunlerimiz/:index/:productName/galeri':(context,state,data) {

          final productName = state.pathParameters['productName']!;
          final index = state.pathParameters['index']!;

          String removeLines(String str) {
            return str.replaceAll('-', ' ');
          }

          return BeamPage(
            key: UniqueKey(),
            title: '${removeLines(productName)} - Nayıs Tekstil',
            child: MoreImagesMainPage(productName: productName,index: index,));

        },

      },
    ),
  );

  MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Nayis Tekstil',
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }
}

