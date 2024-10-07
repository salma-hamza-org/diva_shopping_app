import 'package:diva_shopping_app/features/categories/ui/widgets/categories_list/categories_item_list.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_list/categories_shimmer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  final List<String?>? categoriesList;
  final bool isLoading;
  const CategoriesList({
    super.key,
    this.categoriesList,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: isLoading ? 4 : categoriesList?.length ?? 0,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: index != 0 ? 5.w : 0.0),
            child: isLoading
                ? const CategoriesShimmerList()
                : CategoriesItemList(
                    index: index,
                    categoryName: categoriesList?[index] ?? '',
                  )),
      ),
    );
  }
}
