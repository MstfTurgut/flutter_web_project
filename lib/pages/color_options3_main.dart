import 'package:flutter/material.dart';
import 'package:nayis_home/pages/color_options_page_desktop.dart';
import 'package:nayis_home/pages/color_options_page_mobile.dart';
import '../model_data/product_data.dart';

class ColorOptions3MainPage extends StatelessWidget {
  final String index;
  final String productName;

  const ColorOptions3MainPage(
      {required this.index, required this.productName, super.key});

  @override
  Widget build(BuildContext context) {

    int pageNumber = 3;

    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    List<String>? colorOptionsImageList =
        ProductData.allProducts[int.parse(index)].colorOptionsList3;

    return isDeviceDesktop
        ? ColorOptionsPageDesktop(
            pageNumber: pageNumber,
            productName: productName,
            index: index,
            colorOptionsImageList: colorOptionsImageList,
          )
        : ColorOptionsPageMobile(
            pageNumber: pageNumber,
            productName: productName,
            index: index,
            colorOptionsImageList: colorOptionsImageList,
          );
  }
}
