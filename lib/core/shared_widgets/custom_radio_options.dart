import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class CustomRadioOption extends StatelessWidget {
  final String imagePath;
  final String label;
  final int value;
  final int groupValue;
  final ValueChanged<int?> onChanged;

  const CustomRadioOption({
    required this.imagePath,
    required this.label,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        height: 55.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        margin: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(
                color:
                value == groupValue ? AppColors.pink : Colors.grey.shade400,
                width: 2)),
        child: Row(
          children: <Widget>[
            Image.asset(
              imagePath,
              height: 30.h,
              width: 30.w,
            ),
            SizedBox(width: 16),
            Text(label, style: TextStyle(fontSize: 18)),
            Spacer(),
            Radio<int>(
              activeColor: AppColors.pink,
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
