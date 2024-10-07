import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/text_styles.dart';
import '../../home/ui/widgets/item_of_product_list.dart';

class YouMayAlsoLikeWidget extends StatelessWidget {
  const YouMayAlsoLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You may also like',
          style: AppTextStyles.font18RobotoBlack
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        // GridView.builder(
        //   shrinkWrap: true,
        //   physics: const NeverScrollableScrollPhysics(),
        //   gridDelegate:
        //   SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2, // Number of items per row
        //     crossAxisSpacing: 12.w, // Spacing between columns
        //     mainAxisSpacing: 16.h, // Spacing between rows
        //     childAspectRatio:
        //     1 / 1.6, // Aspect ratio of the items
        //   ),
        //   itemCount: 6,
        //   // Number of products in grid
        //   itemBuilder: (context, index) {
        //     return const ItemOfProductList();
        //   },
        // ),
      ],
    );
  }
}
