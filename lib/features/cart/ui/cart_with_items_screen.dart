import 'package:diva_shopping_app/features/cart/data/model/cart_model.dart';
import 'package:diva_shopping_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:diva_shopping_app/features/cart/ui/widgets/cart_list_view_items.dart';
import 'package:diva_shopping_app/features/cart/ui/widgets/price_and_checkout_button_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartWithItemsScreen extends StatelessWidget {
  List<CartModel> cartItems;


  CartWithItemsScreen(this.cartItems);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(child: CartListViewItems(cartItems)),
          PriceAndCheckoutButtonRow(BlocProvider.of<CartCubit>(context)
              .calculateTotalPrice(cartItems)
              .toStringAsFixed(2))
        ],
      ),
    );
  }
}
