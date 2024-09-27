import 'package:diva_shopping_app/features/home/ui/widgets/home_top_bar.dart';
import 'package:diva_shopping_app/features/home/ui/widgets/search_bar_and_filteration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 0.h,),
          child:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTopBar(),
              SearchBarAndFilteration(),

            ],
          ),
        ),
      ),
    );
  }
}
