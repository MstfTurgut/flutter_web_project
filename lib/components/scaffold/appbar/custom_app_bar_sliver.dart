import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appbar_desktop_extension.dart';
import 'appbar_mobile_extension.dart';

class CustomAppBarSliver extends SliverPersistentHeaderDelegate {


  final BuildContext context;

  const CustomAppBarSliver({
    required this.context,
  });


  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    return Container(
            height: MediaQuery.of(context).size.height * 0.11,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xff1D262B),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, -2),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.16),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isDeviceDesktop?const Spacer():const SizedBox(width: 0,),
                ClipOval(
                  child: Image.asset(
                    'assets/model/logo.jpg',
                    fit: BoxFit.cover,
                    width: isDeviceDesktop?65:50,
                    height: isDeviceDesktop?65:50,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'NAYIS TEKSTIL',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: isDeviceDesktop?25:20, color: Colors.white),
                ),
                const Spacer(),
                isDeviceDesktop?buildDesktopAppBarRow(context):buildMobileAppBarIconButton(context),
                isDeviceDesktop?const Spacer():const SizedBox(width: 0,),
              ],
            ),
          );
  }
  
  @override
  double get maxExtent => MediaQuery.of(context).size.height * 0.11;

  @override
  double get minExtent => MediaQuery.of(context).size.height * 0.11;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }




}
