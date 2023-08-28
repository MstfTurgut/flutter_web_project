import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/component_widgets/color_options_change_button.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar_sliver.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/fab.dart';
import '../decoration/dividers.dart';
import '../scaffold/ending_container_desktop.dart';
import '../scaffold/ending_container_mobile.dart';
import '../decoration/image_with_frame.dart';

/*class ColorOptionsPageMobile extends StatelessWidget {

  final List<String>? colorOptionsImageList;
  final String productName;
  final String index;
  final int pageNumber;

  const ColorOptionsPageMobile
({
  required this.pageNumber,
  required this.colorOptionsImageList,
  required this.index,
  required this.productName,
  super.key});

  String removeLines(String str) {
  return str.replaceAll('-', ' ');
}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    bool isPlise = (int.parse(index) == 0) ? true : false;

    List<Widget> items = [
      const SizedBox(
        height: 30,
      ),
      Text('${removeLines(productName)} Renk Seçenekleri' , style: GoogleFonts.raleway(color: Colors.white , fontSize: 17 ),),
      const SizedBox(height: 50,),
      ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: colorOptionsImageList!.length,
      itemBuilder: (context, index) {
        return colorOptionsImageList!
            .map(
              (e) => Column(
                children: [
                  ImageWithFrame(imagePath: e , width: size.width * 0.87),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
            .toList()[index];
      },),
      const SizedBox(height: 40,),
      isPlise
          ? ColorOptionsChangeButton(pageNumber: pageNumber,index: index, productName: productName)
          : const SizedBox(
              height: 0,
            ),
      const SizedBox(height: 30,),
      TextButton(onPressed: () {
                context.beamToNamed('/urunlerimiz/$index/$productName');

      }, child: const Text('Geri Dön' , style: TextStyle(decoration: TextDecoration.underline, color: Colors.white),)),
      const SizedBox(height: 60,),
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
}*/

class ColorOptionsPageMobile extends StatelessWidget {
  final List<String>? colorOptionsImageList;
  final String productName;
  final String index;
  final int pageNumber;

  const ColorOptionsPageMobile(
      {required this.pageNumber,
      required this.colorOptionsImageList,
      required this.index,
      required this.productName,
      super.key});

  String removeLines(String str) {
    return str.replaceAll('-', ' ');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    bool isPlise = (int.parse(index) == 0) ? true : false;

  
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
              SliverPersistentHeader(pinned: true,delegate: CustomAppBarSliver(context: context)),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    '${removeLines(productName)} Renk Seçenekleri',
                    style: GoogleFonts.raleway(color: Colors.white, fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ])),
              SliverList(delegate: SliverChildBuilderDelegate(childCount: colorOptionsImageList!.length,
              (context, index) {
                return colorOptionsImageList!
              .map(
                (e) => Column(
                  children: [
                    ImageWithFrame(imagePath: e, width: size.width * 0.87),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
              .toList()[index];
              }),),
              SliverList(delegate: SliverChildListDelegate([
                const SizedBox(
        height: 40,
      ),
      isPlise
          ? ColorOptionsChangeButton(
              pageNumber: pageNumber, index: index, productName: productName)
          : const SizedBox(
              height: 0,
            ),
      const SizedBox(
        height: 30,
      ),
      Center(
        child: TextButton(
            onPressed: () {
              context.beamToNamed('/urunlerimiz/$index/$productName');
            },
            child: const Text(
              'Geri Dön',
              style: TextStyle(
                  decoration: TextDecoration.underline, color: Colors.white),
            )),
      ),
      const SizedBox(
        height: 60,
      ),
      UnconstrainedBox(child: Dividers.simpleDivider(mediaSize: size)),
      (isDeviceDesktop)
          ? EndingContainerForDesktop(size: size)
          : EndingContainerForMobile(size: size),
              ]))
            ],
          )),
    );
  }
}
