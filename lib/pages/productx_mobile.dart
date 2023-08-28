import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/ending_container_desktop.dart';
import 'package:nayis_home/scaffold/fab.dart';
import '../decoration/dividers.dart';
import '../carousel_sliders/image_editor_home_carousel.dart';
import '../model_data/product.dart';
import '../scaffold/ending_container_mobile.dart';
import '../carousel_sliders/carouselxmobile.dart';

class ProductXMobile extends StatelessWidget {
  const ProductXMobile({required this.index, required this.product, Key? key})
      : super(key: key);
  final String index;
  final Product product;

  String removeSpaces(String str) {
    return str.replaceAll(' ', '-');
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageList = product.productImageSliderListForDetailedPage
        .map((e) => ImageEditorForCarousel(imagePath: e))
        .toList();

    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    List<Widget> items = [
      Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CarouselXMobile(
            imageSlidersData: imageList,
          ),
          const SizedBox(
            height: 20,
          ),
          //Dividers.dividerWithArrow(mediaSize: size),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    color: Colors.black54,
                    offset: Offset(-1, 1)),
              ],
              color: Color.fromARGB(82, 155, 178, 201),
              //borderRadius: BorderRadius.circular(6)
            ),
            width: size.width * 0.94,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    product.productName,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.stixTwoText(
                        fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    product.productDescription,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.stixTwoText(
                        fontSize: 15, color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextButton(
                onPressed: () {
                  context.beamToNamed('/urunlerimiz');
                },
                child: const Text(
                  'Tüm Ürünler',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                )),
            SizedBox(
              width: product.doesHaveColorList ? 20 : 0,
            ),
            product.doesHaveColorList
                ? TextButton(
                    onPressed: () {
                      context.beamToNamed(
                          '/urunlerimiz/$index/${removeSpaces(product.productName)}/renk-secenekleri');
                    },
                    child: const Text(
                      'Renk Seçeneklerine Göz At',
                      style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline),
                    ))
                : const SizedBox(
                    width: 0,
                  ),
          ]),
          const SizedBox(
            height: 15,
          ),
          product.doesHaveMoreImages
              ? TextButton(
                  onPressed: () {
                    context.beamToNamed(
                        '/urunlerimiz/$index/${removeSpaces(product.productName)}/galeri');
                  },
                  child: const Text(
                    'Daha Fazla Resim',
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ))
              : const SizedBox(
                  width: 0,
                ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 45, 63, 73)),
              onPressed: () {
                context.beamToNamed('/iletisim');
              },
              child: const Text(
                'Bize Ulaşın Hemen Siparişinizi Oluşturalım',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white),
              ))
        ],
      ),

      //ending container
      SizedBox(
        height: (size.width > 1000) ? 200 : 70,
      ),
      UnconstrainedBox(child: Dividers.simpleDivider(mediaSize: size)),
      isDeviceDesktop
          ? EndingContainerForDesktop(size: size)
          : EndingContainerForMobile(size: size),
    ];

    return Scaffold(
      drawer: const NavDrawer(),
      floatingActionButton: const DoubleFabRow(),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/model/background.jpg',
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return items[index];
              },
            ))
          ],
        ),
      ),
    );
  }
}
