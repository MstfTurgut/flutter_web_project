import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/fab.dart';
import 'package:nayis_home/model_data/about_text.dart';
import '../decoration/dividers.dart';
import '../scaffold/ending_container_desktop.dart';
import '../scaffold/ending_container_mobile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    List<Widget> items = [
      const SizedBox(
        height: 30,
      ),
      Text(
        'Hakkımızda',
        style: GoogleFonts.notoSansJavanese(
            fontSize: 30, color: const Color.fromARGB(223, 255, 255, 255)),
      ),
      const SizedBox(
        height: 40,
      ),
      Container(
        color: const Color.fromARGB(119, 29, 38, 43),
        height: isDeviceDesktop? size.height * 0.45: size.height * 0.27,
        width: isDeviceDesktop?size.width * 0.75:size.width * 0.9,
        child: Padding(
          padding: isDeviceDesktop? const EdgeInsets.all(15.0) : const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/model/about-banner.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: isDeviceDesktop?70:40,
      ),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: isDeviceDesktop?200:40),
          child: const AboutPageRichText(),
          ),
          const SizedBox(height: 100,),
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
