import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/features/categories/logic/cubit/category_cubit.dart';
import 'package:diva_shopping_app/features/categories/logic/cubit/category_state.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_list/categories_bloc_builder.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/categories_top_bar.dart';
import 'package:diva_shopping_app/features/categories/ui/widgets/products_list/category_products_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
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
                  const CategoryProductsBlocBuilder(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
