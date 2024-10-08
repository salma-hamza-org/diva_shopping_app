import 'package:diva_shopping_app/features/categories/ui/widgets/products_list/item_of_product_list.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/products_list/item_of_shimmer_product_list.dart';
import 'package:flutter/material.dart';

import '../../../data/models/category_response_model.dart';

class GridOfProducts extends StatelessWidget {
  final bool isLoading;
  final List<CategoryResponseModel?>? products;
  const GridOfProducts({super.key, this.isLoading = false, this.products});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.7,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => isLoading
                  ? const ItemOfShimmerProductList()
                  : ItemOfProductList(product: products?[index]),
              childCount: products?.length,
            ),
          ),
        ],
      ),
    );
  }
}
