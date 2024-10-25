import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class OrderItemsSection extends StatelessWidget {
  const OrderItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Items :',
          style: AppTextStyles.font16RobotoBlack,
        ),
        SizedBox(
          height: 160.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => Column(
              children: [
                Container(
                  height: 110.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.darkGrey, width: 1.5),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/women-jacket.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
                SizedBox(
                    width: 100.w,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Text(
                            'Rain Jacket Women Windbreaker Striped Climbing Raincoats',
                            style: AppTextStyles.font14RobotoBlack,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '100 L.E',
                              style: AppTextStyles.font12RobotoBlack.copyWith(fontWeight: FontWeight.bold), // Keep the item count regular
                            ),
                            const Spacer(),
                            Text(
                              '1item',
                              style: AppTextStyles.font14RobotoBlack, // Keep the item count regular
                            ),
                          ],
                        ),
                      ],
                    )

                ),
              ],
            ),
            separatorBuilder: (context, index) =>
                horizontalSpace(10.w),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
