import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/component_widgets/color_options_change_button.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar_sliver.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/fab.dart';
import 'package:nayis_home/decoration/image_with_frame.dart';
import '../decoration/dividers.dart';
import '../scaffold/ending_container_desktop.dart';
import '../scaffold/ending_container_mobile.dart';

class ColorOptionsPageDesktop extends StatelessWidget {
  final int pageNumber;
  final String productName;
  final String index;
  final List<String>? colorOptionsImageList;

  const ColorOptionsPageDesktop(
      {required this.pageNumber,
      required this.colorOptionsImageList,
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

    bool isPlise = (int.parse(index) == 0) ? true : false;

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
                '${removeLines(productName)} Renk Seçenekleri',
                style: GoogleFonts.raleway(color: Colors.white, fontSize: 23),
              )),
          const SizedBox(
            height: 80,
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 100,
            runSpacing: 70,
            children: colorOptionsImageList!.map((image) {
              return ImageWithFrame(
                imagePath: image,
                width: size.width * 0.4,
              );
            }).toList(),
          ),
        ],
      ),
      const SizedBox(
        height: 50,
      ),
      isPlise
          ? ColorOptionsChangeButton(
              pageNumber: pageNumber, index: index, productName: productName)
          : const SizedBox(
              height: 0,
            ),
      const SizedBox(height: 30,),
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
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(delegate: CustomAppBarSliver(context: context)),
            SliverList(delegate: SliverChildBuilderDelegate(childCount: items.length,(context, index) {
              return Center(child: items[index]);
            }))
          ],
        )
      ),
    );
  }
}
