import 'package:flutter/material.dart';
import 'package:nayis_home/pages/more_images_page_desktop.dart';
import 'package:nayis_home/pages/more_images_page_mobile.dart';
import '../model_data/product_data.dart';

class MoreImagesMainPage extends StatelessWidget {
  final String index;
  final String productName;

  const MoreImagesMainPage(
      {required this.index, required this.productName, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);

    List<String>? moreImagesList =
        ProductData.allProducts[int.parse(index)].moreImagesList;

    return isDeviceDesktop
        ? MoreImagesPageDesktop(
            moreImagesList: moreImagesList,
            index: index,
            productName: productName)
        : MoreImagesPageMobile(
            moreImagesList: moreImagesList,
            index: index,
            productName: productName);
  }
}
