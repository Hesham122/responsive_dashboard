import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';
import 'package:responsive_dashboard/views/widgets/range_option.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: ResStyles.styleSimiBold20(context),
        ),
        const RangeOptions(isIncome: EdgeInsets.symmetric(horizontal: 16,vertical: 12),)
      ],
    );
  }
}