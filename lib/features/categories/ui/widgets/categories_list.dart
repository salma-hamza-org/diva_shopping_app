import 'package:diva_shopping_app/features/categories/ui/widgets/categories_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: index != 0 ? 5.w : 0.0),
          child: CategoriesItemList(
            index: index,
          ),
        ),
        itemCount: 4,
      ),
    );
  }
}
