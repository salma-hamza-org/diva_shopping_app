import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridOfProducts extends StatelessWidget{
  const GridOfProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.8,
            ),
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) => itemOfProduct(),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}

Widget itemOfProduct() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r)
              ),
              child: Image.asset(
                'assets/images/testImage.png',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: EdgeInsets.only(top: 5.h,left: 5.w),
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.favorite_border,
                  size: 20,),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Padding(
                padding: EdgeInsets.only(bottom: 5.h,right: 5.w),
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.shopping_cart_rounded,
                    size: 20,),
                ),
              ),
            ),

          ],
        ),
      ),
      Padding(
        padding:EdgeInsets.only(top: 8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                'Baby blue blouse',
                style: AppTextStyles.font14RobotoBlack,
                overflow: TextOverflow.ellipsis, // Prevent text overflow
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.yellow,
                  size: 16.0,
                ),
               horizontalSpace(4),
                Text(
                  '4.9',
                  style: AppTextStyles.font12RobotoGrey,
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 4.h),
        child: Text(
          '545 L.E',
          style: AppTextStyles.font14RobotoBlack,
        ),
      ),
    ],
  );
}