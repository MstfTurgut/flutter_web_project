import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/model_data/product.dart';
import 'package:nayis_home/components/scaffold/appbar/custom_app_bar.dart';
import 'package:nayis_home/components/scaffold/drawer.dart';
import 'package:nayis_home/components/scaffold/ending_container_desktop.dart';
import 'package:nayis_home/components/carousel_sliders/carouselxdesktop.dart';
import '../components/decoration/dividers.dart';
import '../components/carousel_sliders/image_editor_home_carousel.dart';
import '../components/scaffold/ending_container_mobile.dart';

class ProductXDesktop extends StatelessWidget {

  final Product product;
  final String index;
  const ProductXDesktop({required this.index,required this.product, Key? key}) : super(key: key);

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
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    CarouselXDesktop(
                      imageSlidersData: imageList,
                    ),
                    SizedBox(
                      width: size.width * 0.07,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.all(30),
                      decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black54,
                              offset: Offset(-1, 1)),
                        ],
                        color: Color.fromARGB(57, 119, 140, 162),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            product.productName,
                            style: GoogleFonts.stixTwoText(
                                fontSize: 24, color: Colors.white),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            width: size.width * 0.35,
                            height: 0.3,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: size.width * 0.3,
                            child: Text(
                              product.productDescription,
                              style: GoogleFonts.stixTwoText(
                                  fontSize: 15, color: Colors.white70),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                SizedBox(width: product.doesHaveColorList?20:0,),
                                product.doesHaveColorList?TextButton(
                                onPressed: () {
                                  context.beamToNamed('/urunlerimiz/$index/${removeSpaces(product.productName)}/renk-secenekleri');
                                },
                                child: const Text(
                                  'Renk Seçeneklerine Göz At',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                )):const SizedBox(width: 0,),
                                SizedBox(width: product.doesHaveMoreImages?20:0,),
                                product.doesHaveMoreImages?TextButton(
                                onPressed: () {
                                  context.beamToNamed('/urunlerimiz/$index/${removeSpaces(product.productName)}/galeri');
                                },
                                child: const Text(
                                  'Daha Fazla Resim',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline),
                                )):const SizedBox(width: 0,),
                            ] 
                          ),
                          const SizedBox(height: 30,),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 45, 63, 73)),
                            onPressed: () {
                          context.beamToNamed('/iletisim');
                        }, child: const Text('Bize Ulaşın Hemen Siparişinizi Oluşturalım' ,style: TextStyle(fontSize: 13 ,color: Colors.white),))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                //ending container
                const SizedBox(
                  height: 100,
                ),
                UnconstrainedBox(child: Dividers.simpleDivider(mediaSize: size)),
                isDeviceDesktop
                    ? EndingContainerForDesktop(size: size)
                    : EndingContainerForMobile(size: size),
              ];

    return Scaffold(
      drawer: const NavDrawer(),
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
