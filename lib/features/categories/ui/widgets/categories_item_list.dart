import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/colors.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesItemList extends StatefulWidget {
  final int index;
  final String categoryName;

  const CategoriesItemList(
      {super.key, required this.index, required this.categoryName});

  @override
  State<CategoriesItemList> createState() => _CategoriesItemListState();
}

List<String> categoriesImage = [
  "assets/images/game-console.png",
  "assets/images/Necklace.png",
  "assets/images/Men_Jacket.png",
  "assets/images/Womens Blouse.png",
];

class _CategoriesItemListState extends State<CategoriesItemList> {
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
              widget.categoryName,
              style: AppTextStyles.font12RobotoBlack,
            )
          ],
        ),
      ),
    );
  }
}
