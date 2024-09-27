
import 'package:diva_shopping_app/features/home/ui/widgets/item_of_categories_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfCategories extends StatelessWidget{
  const ListOfCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => ItemOfCategoriesList(index: index,),
        itemCount: 5,
      ),
    );
  }
}


