import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../logic/cubit/category_cubit.dart';

class CategoriesItemList extends StatelessWidget {
  final int index;
  final String categoryName;
  final int selectedIndex;
  final Function(int) onCategorySelected;

  CategoriesItemList({
    super.key,
    required this.index,
    required this.categoryName,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  List<String> categoriesImage = [
    "assets/images/game-console.png",
    "assets/images/Necklace.png",
    "assets/images/Men_Jacket.png",
    "assets/images/Womens Blouse.png",
  ];

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedIndex == index;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
      child: GestureDetector(
        onTap: () {
          onCategorySelected(index);
          context.read<CategoryCubit>().getCategoryProducts(categoryName);
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: isSelected ? 35.0.r : 30.0.r,
              backgroundColor: AppColors.lightPink,
              child: Image.asset(
                height: 40.h,
                categoriesImage[index],
              ),
            ),
            verticalSpace(5.h),
            Text(
              categoryName,
              style: isSelected
                  ? AppTextStyles.font14RobotoBlack
                  : AppTextStyles.font12RobotoBlack,
            ),
          ],
        ),
      ),
    );
  }
}
