import 'package:diva_shopping_app/features/cart/ui/widgets/cart_list_view_items.dart';
import 'package:diva_shopping_app/features/cart/ui/widgets/price_and_checkout_button_row.dart';
import 'package:flutter/material.dart';

class CartWithItemsScreen extends StatelessWidget {
  const CartWithItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Expanded(child: CartListViewItems()),
          PriceAndCheckoutButtonRow()
        ],
      ),
    );
  }
}
