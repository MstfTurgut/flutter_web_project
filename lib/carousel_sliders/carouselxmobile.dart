import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nayis_home/decoration/border_painter.dart';
import '../decoration/themes.dart';

class CarouselXMobile extends StatefulWidget {

  const CarouselXMobile({ 
     required this.imageSlidersData,
    
    super.key});

  final List<Widget> imageSlidersData;


  @override
  State<CarouselXMobile> createState() => _CarouselXMobileState();
}

class _CarouselXMobileState extends State<CarouselXMobile> {
  CarouselController controller = CarouselController();
  int? selectedIndex = 0;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CustomPaint(
      foregroundPainter: BorderPainterCornerFrames(),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: ThemeColors.themeCardColor,
        child: Column(
          children: [
            UnconstrainedBox(
              child: SizedBox(
                //butonlar + carousele genişlik ayarı vermek icin sized box
                width: size.width * 0.85,
                child: Stack(children: [
                  // Butonları koymak icin stack
                  CarouselSlider(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(milliseconds: 1400),
                      viewportFraction: 1,
                      aspectRatio: (1.5),
                    ),
                    items: widget.imageSlidersData,
                    carouselController: controller,
                  ),
                  Positioned(
                      right: 2,
                      bottom: ((17 * size.width) / 60) - 20,
                      child: IconButton(
                          onPressed: () {
                            controller.nextPage();
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white.withOpacity(0.8),
                          ))),
                  Positioned(
                      bottom: ((17 * size.width) / 60) - 20,
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
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Wrap(
                children: List<Widget>.generate(
                  widget.imageSlidersData.length,
                  (index) {
                    final image = widget.imageSlidersData[index];
                    return Row( 
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          color: selectedIndex == index
                              ? Colors.white.withOpacity(0.2)
                              : Colors.transparent,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedIndex = index;
                                controller.jumpToPage(index);
                              });
                            },
                            child: SizedBox(
                              height: 40,
                              width: 55,
                              child: image,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
