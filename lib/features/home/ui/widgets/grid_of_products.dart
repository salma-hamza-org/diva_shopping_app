import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/item_of_product_list.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/item_of_shimmer_product_list.dart';
import 'package:flutter/material.dart';

class GridOfProducts extends StatelessWidget{
  final bool isLoading;
  final List<ProductModel?>? productList;
  const GridOfProducts({super.key,  this.isLoading = false, this.productList});

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
              childAspectRatio: 0.8,
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) => isLoading ? const ItemOfShimmerProductList() :  ItemOfProductList(productModel: productList?[index],),
              childCount: productList?.length,
            ),
          ),
        ],
      ),
    );
  }
}


