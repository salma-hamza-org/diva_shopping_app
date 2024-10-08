import 'package:diva_shopping_app/features/categories/ui/widgets/categories_list/categories_item_list.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_list/categories_shimmer_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesList extends StatefulWidget {
  final List<String?>? categoriesList;
  final bool isLoading;
  const CategoriesList({
    super.key,
    this.categoriesList,
    this.isLoading = false,
  });

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int selectedCategoryIndex = 0;

  void _onCategorySelected(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.isLoading ? 4 : widget.categoriesList?.length ?? 0,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: index != 0 ? 5.w : 0.0),
          child: widget.isLoading
              ? const CategoriesShimmerList()
              : CategoriesItemList(
                  index: index,
                  categoryName: widget.categoriesList?[index] ?? '',
                  selectedIndex: selectedCategoryIndex,
                  onCategorySelected: _onCategorySelected,
                ),
        ),
      ),
    );
  }
}
