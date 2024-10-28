import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';

class WishListIsEmpty extends StatelessWidget {
  const WishListIsEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(200),
          const Icon(
            Icons.favorite_border,
            color: Colors.black,
            size: 150.0,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'No Items !',
            style: AppTextStyles.font24LibreBaskervilleBlack
                .copyWith(fontSize: 28.sp),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
