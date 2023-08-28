import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nayis_home/decoration/dividers.dart';
import '../model_data/product_data.dart';
import '../scaffold/appbar/custom_app_bar.dart';
import '../scaffold/drawer.dart';
import '../scaffold/ending_container_desktop.dart';
import '../scaffold/ending_container_mobile.dart';
import '../scaffold/fab.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../decoration/image_with_frame.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  CameraPosition nayisStore = const CameraPosition(
    target: LatLng(41.065508, 28.867122),
    zoom: 15,
  );

  static Marker nayisStoreMarker = const Marker(
      markerId: MarkerId('Asdasd'), position: LatLng(41.065508, 28.867122));

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    List<Widget> items = [
      const SizedBox(
        height: 30,
      ),
      Center(
        child: Text(
          'Mağazamız',
          style: GoogleFonts.notoSansJavanese(
              fontSize: 30, color: const Color.fromARGB(217, 255, 255, 255)),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      UnconstrainedBox(
        child: SizedBox(
          width: (isDeviceDesktop)
              ? size.width * 0.6
              : size.width * 0.87, //---------------
          child: AspectRatio(
            aspectRatio: (isDeviceDesktop) ? 1.9 : 1.24, //-----------------
            child: GoogleMap(
              markers: {nayisStoreMarker},
              initialCameraPosition: nayisStore,
              mapType: MapType.normal,
              onMapCreated: (map) {},
            ),
          ),
        ),
      ),
      SizedBox(
        height: isDeviceDesktop ? 30 : 10,
      ),
      Center(
        child: Container(
          margin: isDeviceDesktop
              ? null
              : const EdgeInsets.symmetric(horizontal: 40),
          child: const Text(
            'Oruçreis Mah.  Tekstilkent Cad. Tekstilkent Sitesi B06 Blok  No: 31-10 / AL-Z16  Esenler/İstanbul',
            style: TextStyle(
                fontSize: 13, color: Color.fromARGB(229, 255, 255, 255)),
          ),
        ),
      ),
      const SizedBox(
        height: 60,
      ),
      Column(
        children: ProductData.storeImages
            .map(
              (e) => Column(
                children: [
                  ImageWithFrame(imagePath: e , width: isDeviceDesktop?size.width * 0.6:size.width * 0.87,),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            )
            .toList(),
      ),
      const SizedBox(
        height: 40,
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
