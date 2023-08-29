import 'package:flutter/material.dart';
import '../../../model_data/product_data.dart';
import 'all_products_card.dart';

class AllProductsMobile extends StatelessWidget {
  const AllProductsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
            childCount: ProductData.allProducts.length, (context, index) {
      return Column(
        children: [
          AllProductsCard(
              index: index,
              product: ProductData.allProducts[index],
              imageWidthRatioDouble: 0.8,
              imageHeightRatiodouble: 0.30),
        ],
      );
    }));
  }
}
