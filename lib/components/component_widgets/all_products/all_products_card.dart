import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import '../../decoration/border_painter.dart';
import '../../../model_data/product.dart';
import '../../decoration/themes.dart';


class AllProductsCard extends StatelessWidget {

  final int? index;
  final double imageHeightRatiodouble;
  final double imageWidthRatioDouble;
  final Product product;

  const AllProductsCard({
    this.index,
    required this.imageHeightRatiodouble,
    required this.imageWidthRatioDouble,
    required this.product,
    super.key
    
    });
  
  
  String removeSpaces(String str) {
  return str.replaceAll(' ', '-');
}

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    return Column(
      children: [
        CustomPaint(
          foregroundPainter: BorderPainterCornerFrames(),
          child: Container(
            color: ThemeColors.themeCardColor,                      
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: size.height * imageHeightRatiodouble,
              width: size.width * imageWidthRatioDouble,
              child: Image.asset('assets/product_images/${product.image}.jpg', fit: BoxFit.cover),
            ),
          ),
        ),
        Container(
          width: (size.width * imageWidthRatioDouble) + 20, //20 = frame padding
          decoration: const BoxDecoration(
              boxShadow:  [
                BoxShadow(
                    blurRadius: 4,
                    color: Colors.black54,
                    offset: Offset(-1, 1)),
              ],
              color: Color.fromARGB(82, 155, 178, 201),
              ),
          child: TextButton(
              onPressed:() {
                context.beamToNamed('/urunlerimiz/${index.toString()}/${removeSpaces(product.productName)}');
              },
              child: Text(product.productName,
              textAlign: TextAlign.center, style: const TextStyle(fontSize: 15, color: Colors.white), ), ),
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}