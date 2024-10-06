import 'package:diva_shopping_app/core/helpers/extentions.dart';
import 'package:diva_shopping_app/core/routing/routes_names.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/core/shared_widgets/item_of_product_grid.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/item_of_shimmer_product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridOfProducts extends StatelessWidget{
  final bool isLoading;
  final List<ProductModel?>? productList;
  const GridOfProducts({super.key,  this.isLoading = false, this.productList});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 12.w, // Spacing between columns
            mainAxisSpacing: 16.h, // Spacing between rows
            childAspectRatio:
            1 / 1.6, // Aspect ratio of the items
          ),
          delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => isLoading ? const ItemOfShimmerProductList() :  ItemOfProductList(
                  productModel: productList?[index],
                  onTap: (){
                    context.pushNamed(Routes.productDetailsScreen,
                        arguments: {
                          'productModel' : productList?[index],
                          'productList' : productList,
                        }
                    );
                  },
                ),
            childCount: productList?.length,
          ),
        ),
      ],
    );
  }
}

