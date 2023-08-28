import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/component_widgets/featuring_products/showup_list_buttons.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar_sliver.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/fab.dart';
import 'package:nayis_home/carousel_sliders/carousel_slider_home.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:nayis_home/component_widgets/featuring_products/product_showup_desktop.dart';
import 'package:nayis_home/component_widgets/why_icons/why_nayis_desktop_row.dart';
import 'package:nayis_home/component_widgets/why_icons/why_nayis_mobile_column.dart';
import '../decoration/dividers.dart';
import '../scaffold/ending_container_desktop.dart';
import '../scaffold/ending_container_mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

  
    return Scaffold(
      floatingActionButton: isDeviceDesktop ? null : const DoubleFabRow(),
      drawer: const NavDrawer(),
      body: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/model/background.jpg',
                  ),
                  fit: BoxFit.cover)),
          child: CustomScrollView(
            controller: ShowupListButtons.autoScrollController,
            slivers: [

              SliverPersistentHeader(
                  pinned: true,
                  delegate: CustomAppBarSliver(context: context)),

              SliverList(
                delegate: SliverChildListDelegate([
                const MyCarouselSlider(),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 100,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Nayıs Perde , Siz Hayal Edin Biz Yapalım...',
                        textStyle: GoogleFonts.dancingScript(
                            fontSize: 35, color: Colors.white),
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 60),
                      )
                    ],
                    totalRepeatCount: 1,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                isDeviceDesktop
                    ? const BuildWhysColumnForDesktop()
                    : const BuildWhysColumnForMobile(),
                const SizedBox(
                  height: 120,
                ),
                Center(
                    child: Text(
                  'Ürünlerimiz',
                  style: TextStyle(
                      color: Colors.white, fontSize: isDeviceDesktop ? 23 : 20),
                )),
                Dividers.dividerWithArrow(
                    mediaSize: MediaQuery.of(context).size),
                SizedBox(
                  height: isDeviceDesktop ? 30 : 10,
                ),
                const ShowupListButtons(),
                SizedBox(
                  height: isDeviceDesktop ? 40 : 30,
                ),
              ])),

              const ProductShowup(),

              SliverList(
                  delegate: SliverChildListDelegate([
                Center(
                  child: TextButton(
                      onPressed: () {
                        context.beamToNamed('/urunlerimiz');
                      },
                      child: Text(
                        'Tüm Ürünlere Göz At',
                        style: TextStyle(
                          fontSize: isDeviceDesktop ? 17 : 14,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 70,
                ),
                UnconstrainedBox(
                    child: Dividers.simpleDivider(mediaSize: size)),
                isDeviceDesktop
                    ? EndingContainerForDesktop(size: size)
                    : EndingContainerForMobile(size: size),
              ])),

            ],
          )),
    );
  }
}
