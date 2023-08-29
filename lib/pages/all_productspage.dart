import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/components/scaffold/appbar/custom_app_bar_sliver.dart';
import 'package:nayis_home/components/scaffold/drawer.dart';
import 'package:nayis_home/components/scaffold/ending_container_desktop.dart';
import 'package:nayis_home/components/scaffold/ending_container_mobile.dart';
import 'package:nayis_home/components/scaffold/fab.dart';
import 'package:nayis_home/components/component_widgets/all_products/all_products_desktop_column.dart';
import 'package:nayis_home/components/component_widgets/all_products/all_products_mobile_column.dart';
import '../components/decoration/dividers.dart';


class AllProductsPage extends StatelessWidget {
  const AllProductsPage({Key? key}) : super(key: key);

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
            SliverPersistentHeader(pinned: true,delegate: CustomAppBarSliver(context: context)),
            SliverList(delegate: SliverChildListDelegate([
              const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: Text(
                        'Ürünlerimiz',
                        style: GoogleFonts.notoSansJavanese(
                            fontSize: 30,
                            color: const Color.fromARGB(223, 255, 255, 255)),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
            ])),
            isDeviceDesktop
                        ? const AllProductsDesktop()
                        : const AllProductsMobile(),
            SliverList(delegate: SliverChildListDelegate([
              const SizedBox(
                      height: 30,
                    ),
                    Dividers.simpleDivider(mediaSize: size),
                    isDeviceDesktop
                        ? EndingContainerForDesktop(
                            size: size,
                          )
                        : EndingContainerForMobile(size: size),
            ]))
          ],
        )
      ),
    );













    
  }
}
