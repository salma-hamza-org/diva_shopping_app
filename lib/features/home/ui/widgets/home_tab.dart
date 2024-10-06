import 'package:diva_shopping_app/core/di/dependency_injection.dart';
import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/all_product_bloc_builder.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/list_of_categories.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/list_of_sales.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/search_bar_and_filteration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getAllProducts(),
      child: BlocBuilder<HomeCubit,HomeState>(
        builder: (context,state){
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(16.w, 20.h, 20.w, 0.h,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HomeTopBar(),
                    const SearchBarAndFilteration(),
                    const ListOfSales(),
                    const ListOfCategories(),
                    verticalSpace(10),
                    const AllProductBlocBuilder(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}