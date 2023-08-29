import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/components/scaffold/appbar/custom_app_bar_sliver.dart';
import 'package:nayis_home/components/scaffold/drawer.dart';
import 'package:nayis_home/components/scaffold/fab.dart';
import '../components/decoration/dividers.dart';
import '../components/scaffold/ending_container_mobile.dart';
import '../components/decoration/image_with_frame.dart';

class MoreImagesPageMobile extends StatelessWidget {
  final List<String>? moreImagesList;
  final String productName;
  final String index;

  const MoreImagesPageMobile(
      {required this.moreImagesList,
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
              SliverPersistentHeader(
                  pinned: true,
                  delegate: CustomAppBarSliver(context: context)),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 30,
                ),
                Center(
                    child: Text(
                  'Daha Fazla ${removeLines(productName)} Resimleri',
                  style: GoogleFonts.raleway(color: Colors.white, fontSize: 17),
                )),
                const SizedBox(
                  height: 50,
                ),
              ])),
              SliverList(delegate: SliverChildBuilderDelegate(childCount: moreImagesList!.length,(context, index) {
                return moreImagesList!
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
              })),
              SliverList(
                  delegate: SliverChildListDelegate([
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        context.beamToNamed('/urunlerimiz/$index/$productName');
                      },
                      child: const Text(
                        'Geri Dön',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.white),
                      )),
                ),
                const SizedBox(
                  height: 60,
                ),
                UnconstrainedBox(
                    child: Dividers.simpleDivider(mediaSize: size)),
                EndingContainerForMobile(size: size),
              ]))
            ],
          )),
    );
  }
}
