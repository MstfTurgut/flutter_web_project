import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/scaffold/appbar/custom_app_bar.dart';
import 'package:nayis_home/scaffold/drawer.dart';
import 'package:nayis_home/scaffold/ending_container_desktop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../decoration/dividers.dart';
import '../scaffold/ending_container_mobile.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    String phoneNumber = '+90 534 483 0274';
    

    final Uri whatsapp = Uri.parse('https://wa.me/$phoneNumber');
    final Uri call = Uri.parse('tel:$phoneNumber');
    final Uri instagram = Uri.parse('https://www.instagram.com/nayis_hom/');
    final Uri facebook = Uri.parse('https://www.facebook.com/hasan.turgut.581730?mibextid=ZbWKwL');


    List<Widget> items = [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Bize Ulaşın',
                  style: GoogleFonts.notoSansJavanese(
                      fontSize: 30,
                      color: const Color.fromARGB(223, 255, 255, 255)),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Whatsapp button
                IconContactButton(
                  onPressed: () {
                    launchUrl(whatsapp);
                  },
                  tileColor: const Color.fromARGB(229, 76, 175, 79),
                  size: size,
                  title: 'Whatsapp ile Ulaşın',
                  child: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Colors.white,
                    size: 40,
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                //Call button
                IconContactButton(
                  onPressed: () {
                    launchUrl(call);
                  },
                  size: size,
                  tileColor: const Color.fromARGB(232, 33, 149, 243),
                  title: 'Şimdi Arayın',
                  child: const Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Instagram button
                IconContactButton(
                  onPressed: (() {
                    launchUrl(instagram);
                  }),
                  size: size,
                  tileColor: const Color.fromARGB(211, 198, 176, 104),
                  title: 'Instagram ile Ulaşın',
                  child: const FaIcon(
                    FontAwesomeIcons.instagram,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                IconContactButton(
                    onPressed: () {
                      launchUrl(facebook);
                    },
                    size: size,
                    tileColor: const Color(0xff3b5998),
                    title: 'Facebook ile Ulaşın',
                    child: const FaIcon(
                      FontAwesomeIcons.squareFacebook,
                      size: 35,
                      color: Colors.white,
                    )),

                //ending container
                SizedBox(
                  height: (size.width > 1000) ? 200 : 140,
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
              itemBuilder : (context, index) {
                return Center(child: items[index],);
              }, 
            ))
          ],
        ),
      ),
    );
  }
}

class IconContactButton extends StatelessWidget {
  final Widget child;
  final String title;
  final Color tileColor;
  final Size size;
  final void Function()? onPressed;

  const IconContactButton({
    required this.onPressed,
    required this.size,
    required this.tileColor,
    required this.child,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isDeviceDesktop = (size.width > 1000);
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: Container(
          height: size.height * 0.076,
          padding: const EdgeInsets.all(5),
          width: (size.width > 1400)
              ? (size.width * 0.25)
              : (isDeviceDesktop ? size.width * 0.4 : size.width * 0.8),
          color: tileColor,
          child: Row(
            children: [
              (size.width > 1400)
                  ? const SizedBox(
                      width: 20,
                    )
                  : const SizedBox(
                      width: 10,
                    ),
              child,
              const SizedBox(
                width: 25,
              ),
              Text(
                title,
                style: TextStyle(fontSize: isDeviceDesktop?20:18, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
