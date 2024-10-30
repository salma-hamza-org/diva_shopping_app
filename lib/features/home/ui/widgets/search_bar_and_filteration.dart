import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/home_cubit.dart';

class SearchBarAndFiltration extends StatelessWidget {
  const SearchBarAndFiltration({super.key});

//filtration
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15.h, horizontal: 18.w),
                isDense: true,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: AppColors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.pink, width: 2),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.red, width: 2),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: AppColors.red, width: 2),
                  borderRadius: BorderRadius.circular(25.r),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.pink,
                  size: 26.r,
                ),
                hintText: 'Search here',
                hintStyle: AppTextStyles.font14RobotoBlack
                    .copyWith(color: Colors.grey.shade600),
              ),
              onChanged: (query) {
                context.read<HomeCubit>().searchProducts(query);
              },
            ),
          ),
          horizontalSpace(16),
          CircleAvatar(
            backgroundColor: AppColors.lightPink,
            child: Image.asset('assets/images/filteration_icon.png'),
          )
        ],
      ),
    );
  }
}
