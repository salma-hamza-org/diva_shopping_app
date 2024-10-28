import 'package:diva_shopping_app/core/di/dependency_injection.dart';
import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/shared_widgets/grid_of_products.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/text_styles.dart';

class YouMayAlsoLikeWidget extends StatelessWidget {
  final List<ProductModel?>? productList;
  const YouMayAlsoLikeWidget({super.key, this.productList});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FavoriteCubit>(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'You may also like',
              style: AppTextStyles.font18RobotoBlack
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            verticalSpace(10),
            Expanded(child: GridOfProducts(productList: productList)),
          ],
        ),
      ),
    );
  }
}
