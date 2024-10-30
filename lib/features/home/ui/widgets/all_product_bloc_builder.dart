import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:diva_shopping_app/features/home/data/models/product_model.dart';
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/shared_widgets/grid_of_products.dart';

class AllProductBlocBuilder extends StatelessWidget {
  const AllProductBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>

      current is GetAllProductsLoading|| current is GetAllProductsSuccess || current is GetAllProductsError,
      builder: (context, state) {
        return state.maybeWhen(

          getAllProductsLoading: (){
            return setupLoading();
          },
          getAllProductsSuccess: (productModelList) {
            return setupSuccess(productModelList ?? []);
          },
          getAllProductsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
  Widget setupLoading() {
    return const Expanded(
      child: GridOfProducts(
        isLoading: true,
      ),
    );
  }

  Widget setupSuccess(List<ProductModel?> productModelList) {
    if (productModelList.isEmpty) {
      return Expanded(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.search_off_rounded,
                  size: 50, color: Colors.grey),
              SizedBox(height: 5.h),
              Text(
                'No results found',
                style: AppTextStyles.font18RobotoDarkGrey,
              ),
            ],
          ),
        ),
      );
    }
    return Expanded(
      child: GridOfProducts(
        productList: productModelList,
        isLoading: false,
      ),
    );
  }

  Widget setupError() {
    return const SizedBox(
      child: Center(child: Text('No data to show')),
    );
  }
}