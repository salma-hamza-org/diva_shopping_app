import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesItemList extends StatefulWidget {
  final int index;
  const CategoriesItemList({super.key, required this.index});

  @override
  State<CategoriesItemList> createState() => _CategoriesItemListState();
}

class _CategoriesItemListState extends State<CategoriesItemList> {
  List<String> categoriesImage = [
    "assets/images/Womens Blouse.png",
    "assets/images/Men_Jacket.png",
    "assets/images/Necklace.png",
    "assets/images/game-console.png",
  ];
  List<String> categoryNames = [
    "Women's clothing",
    "Men's clothing",
    "Jewelery",
    "Electronics",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 16.h),
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Column(
          children: [
            CircleAvatar(
              radius: 30.0.r,
              backgroundColor: AppColors.lightPink,
              child: Image.asset(
                height: 40.h,
                categoriesImage[widget.index],
              ),
            ),
            verticalSpace(5.h),
            Text(
              categoryNames[widget.index],
              style: AppTextStyles.font12RobotoBlack,
            )
          ],
        ),
      ),
    );
  }
}
