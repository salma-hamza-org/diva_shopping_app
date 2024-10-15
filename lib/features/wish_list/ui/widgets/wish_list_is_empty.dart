import 'package:flutter/material.dart';

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
          verticalSpace(250),
          const Icon(
            Icons.favorite_border,
            color: Colors.grey,
            size: 50.0,
          ),
          Text(
            "Wishlist Is Empty",
            style: AppTextStyles.font22RobotoBlack,
          ),
        ],
      ),
    );
  }
}
