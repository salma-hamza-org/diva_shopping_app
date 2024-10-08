import 'package:diva_shopping_app/features/cart/ui/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListViewItems extends StatelessWidget {
  const CartListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => CartItemWidget(),
        separatorBuilder: (context, index) => SizedBox(
          height: 10.h,
        ),
        itemCount: 10,
      ),
    );
  }
}
