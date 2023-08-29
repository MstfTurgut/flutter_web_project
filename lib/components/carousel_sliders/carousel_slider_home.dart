import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nayis_home/components/carousel_sliders/image_editor_home_carousel.dart';
import '../../model_data/product_data.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  State<MyCarouselSlider> createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {

  CarouselController controller = CarouselController();


  List<Widget>? imageList = ProductData.imageSlidersDataForHomepage.map((e) => ImageEditorForCarousel(imagePath: e)).toList();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);
    

    return UnconstrainedBox(
      child: SizedBox(   //butonlar + carousele genişlik ayarı vermek icin sized box
        width: isDeviceDesktop?size.width * 0.7:size.width * 0.9,
        child: Stack(children: [ // Butonları koymak icin stack
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 1400),
              viewportFraction: 1,
              aspectRatio: isDeviceDesktop?(1.962):(1.5),
            ),
            items: imageList,
            carouselController: controller,
          ),
          Positioned(
              right: 2,
              bottom: isDeviceDesktop?((size.width * 7) / 30) - 80:((size.width * 9) / 30) - 20,
              child: IconButton(
                  onPressed: () {
                    controller.nextPage();
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white.withOpacity(0.8),
                  ))),
          Positioned(
              bottom: isDeviceDesktop?((size.width * 7 ) / 30) - 80:((size.width * 9) / 30) - 20,
              child: IconButton(
                  onPressed: () {
                    controller.previousPage();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white.withOpacity(0.7),
                  ))),
        ]),
      ),
    );
  }
}
