// ListOfCategories.dart
import 'package:diva_shopping_app/features/home/logic/home_cubit.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/item_of_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfCategories extends StatefulWidget {
  const ListOfCategories({super.key});

  @override
  State<ListOfCategories> createState() => _ListOfCategoriesState();
}

class _ListOfCategoriesState extends State<ListOfCategories> {
  void _onCategorySelected(int index) {
    setState(() {
      context.read<HomeCubit>().selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return SizedBox(
          height: 80.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => ItemOfCategoriesList(
              index: index,
              isSelected: context.read<HomeCubit>().selectedIndex == index,
              onCategorySelected: _onCategorySelected,
            ),
          ),
        );
      },
    );
  }
}
