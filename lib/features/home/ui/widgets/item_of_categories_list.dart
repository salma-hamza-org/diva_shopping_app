// ItemOfCategoriesList.dart
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';

class ItemOfCategoriesList extends StatelessWidget {
  final int index;
  final bool isSelected;
  final Function(int) onCategorySelected;

  const ItemOfCategoriesList({
    super.key,
    required this.index,
    required this.isSelected,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    List<String> categoryNames = [
      "All",
      "electronics",
      "jewelery",
      "men's clothing",
      "women's clothing"
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
      child: GestureDetector(
        onTap: () {
          onCategorySelected(index); // Update the selected category
          context
              .read<HomeCubit>()
              .getHomeCategoryProducts(categoryNames[index]);
        },
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.pink : AppColors.lightPink,
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                categoryNames[index],
                style: AppTextStyles.font14RobotoPink.copyWith(
                  color: isSelected ? Colors.white : AppColors.pink,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
