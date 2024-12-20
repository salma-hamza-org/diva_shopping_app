import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_styles.dart';

class CartItemWidget extends StatefulWidget {
  CartModel cartModel;

  CartItemWidget(this.cartModel);

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325.w,
      height: 125.h,
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.pink, width: 2)),
      child: Row(
        children: [
          Container(
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: Colors.grey.shade400),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.cartModel.imagePath)))),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 180.w,
                child: Text(
                  widget.cartModel.name,
                  style: AppTextStyles.font16RobotoBlack,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                '${widget.cartModel.price} L.E',
                style: AppTextStyles.font16RobotoBlack
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5.h,
              ),
              Container(
                width: 100.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.pink),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          int newQuantity = widget.cartModel.quantity - 1;
                          newQuantity == 0
                              ? BlocProvider.of<CartCubit>(context)
                                  .deleteCartItem(widget.cartModel.id)
                              : BlocProvider.of<CartCubit>(context)
                                  .updateCartItemQuantity(
                                      widget.cartModel.id, newQuantity);
                        },
                        child: Icon(
                          Icons.remove_outlined,
                          color: Colors.white,
                          size: 25.r,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        widget.cartModel.quantity.toString(),
                        style: AppTextStyles.font18RobotoWhite
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          int newQuantity = widget.cartModel.quantity + 1;
                          BlocProvider.of<CartCubit>(context)
                              .updateCartItemQuantity(
                                  widget.cartModel.id, newQuantity);
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25.r,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              BlocProvider.of<CartCubit>(context)
                  .deleteCartItem(widget.cartModel.id);
            },
            child: Icon(
              Icons.delete_forever_rounded,
              size: 35.r,
              color: AppColors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
