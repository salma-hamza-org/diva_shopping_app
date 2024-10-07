import 'package:diva_shopping_app/features/categories/ui/widgets/categories_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  final List<String?>? categoriesList;

  const CategoriesList({super.key, this.categoriesList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList?.length ?? 0,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: index != 0 ? 5.w : 0.0),
          child: CategoriesItemList(
            index: index,
            categoryName: categoriesList?[index] ?? '',
          ),
        ),
      ),
    );
  }
}
