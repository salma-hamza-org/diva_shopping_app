import 'package:diva_shopping_app/core/shared_widgets/custom_radio_options.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';

class RadioButtonsSection extends StatefulWidget {
  int selectedValue;

  RadioButtonsSection({super.key, required this.selectedValue});

  @override
  State<RadioButtonsSection> createState() => _RadioButtonsSectionState();
}

class _RadioButtonsSectionState extends State<RadioButtonsSection> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Pay with:',
        style: AppTextStyles.font16RobotoBlack,
      ),
      verticalSpace(8),
      CustomRadioOption(
        imagePath: 'assets/images/master_card_icon.png',
        label: 'Credit/Debit Card',
        value: 1,
        groupValue: widget.selectedValue,
        onChanged: (int? value) {
          setState(() {
            widget.selectedValue = value!;
          });
        },
      ),
      CustomRadioOption(
        imagePath: 'assets/images/cash_icon.png',
        label: 'Cash',
        value: 2,
        groupValue: widget.selectedValue,
        onChanged: (int? value) {
          setState(() {
            widget.selectedValue = value!;
          });
        },
      ),
    ]);
  }
}
