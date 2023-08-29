import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:nayis_home/components/component_widgets/featuring_products/showup_list_buttons.dart';
import 'package:nayis_home/components/component_widgets/featuring_products/showup_widget_desktop.dart';
import 'package:nayis_home/components/component_widgets/featuring_products/showup_widget_mobile.dart';
import 'package:nayis_home/model_data/product_data.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ProductShowup extends StatelessWidget {
  const ProductShowup({super.key});


  String removeSpaces(String str) {
    return str.replaceAll(' ', '-');
  }

   Widget wrapScrollTag({int? index, Widget? child}) {
    return AutoScrollTag(
      key: ValueKey(index),
      controller: ShowupListButtons.autoScrollController,
      index: index!,
      highlightColor: Colors.black.withOpacity(0.1),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: ProductData.allProducts.length,
      (context, index) {
        return wrapScrollTag(
          index: index,
          child: Column(
            children: [
              isDeviceDesktop?ShowupWidgetDesktop(
                  image1Path: ProductData.allProducts[index]
                      .productImageSliderListForDetailedPage[0],
                  image2Path: ProductData.allProducts[index]
                      .productImageSliderListForDetailedPage[1],
                  image3Path: ProductData.allProducts[index]
                      .productImageSliderListForDetailedPage[2],
                  productName: ProductData.allProducts[index].productName,
                  size: size,
                  function: () {
                    context.beamToNamed(
                        '/urunlerimiz/${index.toString()}/${removeSpaces(ProductData.allProducts[index].productName)}');
                  }):ShowupWidgetMobile(
                  image1Path: ProductData.allProducts[index]
                      .productImageSliderListForDetailedPage[0],
                  image2Path: ProductData.allProducts[index]
                      .productImageSliderListForDetailedPage[1],
                  image3Path: ProductData.allProducts[index]
                      .productImageSliderListForDetailedPage[2],
                  productName: ProductData.allProducts[index].productName,
                  size: size,
                  function: () {
                    context.beamToNamed(
                        '/urunlerimiz/${index.toString()}/${removeSpaces(ProductData.allProducts[index].productName)}');
                  }),
               SizedBox(
                height: isDeviceDesktop?100:50,
              )
            ],
          ),
        );
      }),
    );
  }
}


