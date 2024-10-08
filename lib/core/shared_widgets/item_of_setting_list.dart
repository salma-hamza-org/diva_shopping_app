import 'package:diva_shopping_app/core/helpers/spacing.dart';
import 'package:diva_shopping_app/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class ItemOfSettingList extends StatelessWidget{
  final IconData icon;
  final String text;

  const ItemOfSettingList({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon),
          horizontalSpace(10),
          Text(
            text,
            style: AppTextStyles.font15RobotoBlack,
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios,
          size: 24,),

        ],
      ),
    );
  }
}
