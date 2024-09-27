import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfSales extends StatelessWidget{
  const ListOfSales({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Image.asset(
                'assets/images/sales1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.h,),
              child: Image.asset(
                'assets/images/sales2.png', // Replace with your second image path
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
    );
  }
}
