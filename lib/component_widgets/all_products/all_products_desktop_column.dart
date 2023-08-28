import 'package:flutter/material.dart';

import '../../model_data/product_data.dart';
import 'all_products_card.dart';

class AllProductsDesktop extends StatelessWidget {
  const AllProductsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Center(
          child: Wrap(
          
          children: List<Widget>.generate(ProductData.allProducts.length, (index) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ), //space between cards
                      AllProductsCard(
                          index: index,
                          product: ProductData.allProducts[index],
                          imageWidthRatioDouble: 0.2,
                          imageHeightRatiodouble: 0.3),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ), //space between cards
                    ],
                  ))
              
              ),
        ),
      ]),
    );
  }
}
