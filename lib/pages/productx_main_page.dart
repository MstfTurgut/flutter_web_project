import 'package:flutter/material.dart';
import 'package:nayis_home/model_data/product_data.dart';
import 'package:nayis_home/pages/productx_desktop.dart';
import 'package:nayis_home/pages/productx_mobile.dart';
import '../model_data/product.dart';



class ProductXMainPage extends StatelessWidget {

  final String index;
  final String productName;
  
  
   const ProductXMainPage({
    super.key,
    required this.productName,
    required this.index,});



  @override
  Widget build(BuildContext context) {


    Size size = MediaQuery.of(context).size;
    bool isDeviceDesktop = (size.width > 1000);
    Product product = ProductData.allProducts[int.parse(index)];


    return isDeviceDesktop?ProductXDesktop(index: index,product: product):ProductXMobile(index: index,product: product);
  }
}