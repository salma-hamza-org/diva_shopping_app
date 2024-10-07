import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_bloc_builder.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_top_bar.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/grid_of_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lighterGray,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CategoriesTopBar(),
              verticalSpace(10.h),
              const CategoriesBlocBuilder(),
              const GridOfProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
