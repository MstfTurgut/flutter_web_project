import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/fab.dart';
import 'package:nayis_home/decoration/image_with_frame.dart';
import '../decoration/dividers.dart';
import '../scaffold/ending_container_desktop.dart';
import '../scaffold/ending_container_mobile.dart';

class MoreImagesPageDesktop extends StatelessWidget {
  final String productName;
  final String index;
  final List<String>? moreImagesList;

  const MoreImagesPageDesktop(
      {
      required this.moreImagesList,
      required this.index,
      required this.productName,
      Key? key})
      : super(key: key);

  String removeLines(String str) {
    return str.replaceAll('-', ' ');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    List<Widget> items = [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
              margin: const EdgeInsets.only(left: 30),
              child: Text(
                'Daha Fazla ${removeLines(productName)} Resimleri',
                style: GoogleFonts.raleway(color: Colors.white, fontSize: 23),
              )),
          const SizedBox(
            height: 80,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 50,
            runSpacing: 60,
            children: moreImagesList!.map((image) {
              return ImageWithFrame(
                imagePath: image,
                width: size.width * 0.4,
                height: size.height * 0.8,
              );
            }).toList(),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      TextButton(onPressed: () {
                context.beamToNamed('/urunlerimiz/$index/$productName');

      }, child: const Text('Geri Dön' , style: TextStyle(decoration: TextDecoration.underline , color: Colors.white),)),
      const SizedBox(
        height: 100,
      ),
      UnconstrainedBox(child: Dividers.simpleDivider(mediaSize: size)),
      (isDeviceDesktop)
          ? EndingContainerForDesktop(size: size)
          : EndingContainerForMobile(size: size),
    ];

    return Scaffold(
      drawer: const NavDrawer(),
      floatingActionButton: isDeviceDesktop ? null : const DoubleFabRow(),
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
                return Center(
                  child: items[index],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
