import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTopBar extends StatelessWidget{
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/images/user_avatar.png',
        scale: 3,
        ),
        horizontalSpace(10),
        Text('Welcome, Dina ',
          style: AppTextStyles.font14RobotoBlack,
        ),
        const Spacer(),
        Icon(Icons.notifications_active_outlined,
        size: 28.sp,
        ),

      ],
    );
  }
}
