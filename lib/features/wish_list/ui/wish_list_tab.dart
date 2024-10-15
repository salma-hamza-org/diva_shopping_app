import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/features/wish_list/logic/cubit/favorite_cubit.dart';
import 'package:diva_shopping_app/features/wish_list/ui/widgets/wish_list_bloc_builder.dart';
import 'package:diva_shopping_app/features/wish_list/ui/widgets/wish_list_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/cubit/favorite_state.dart';

class WishListTab extends StatelessWidget {
  const WishListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteCubit, FavoriteState>(
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
                  const WishListTopBar(),
                  verticalSpace(10.h),
                  const WishlistBlocBuilder(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
