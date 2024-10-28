import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImageWidget extends StatelessWidget {
  final ProductModel? productModel;
  const ProductImageWidget({super.key, this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        // color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Image.network(
        productModel?.image ?? 'https://th.bing.com/th/id/OIP.dNdfVC2f9T8ks_Fcv-kPcQAAAA?w=120&h=102&rs=1&pid=ImgDetMain',
        height: 360.h,
        width: double.infinity,
      ),
    );
  }
}
