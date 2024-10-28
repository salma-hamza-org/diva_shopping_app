import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/cart/ui/widgets/cart_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartListViewItems extends StatelessWidget {
  List<CartModel> cartItems;
  CartListViewItems(this.cartItems);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => CartItemWidget(cartItems[index]),
        separatorBuilder: (context, index) => SizedBox(
          height: 10.h,
        ),
        itemCount: cartItems.length,
      ),
    );
  }
}
