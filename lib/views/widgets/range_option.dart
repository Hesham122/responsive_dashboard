import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key, this.isIncome,
  });
  final EdgeInsetsGeometry? isIncome;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:isIncome?? const EdgeInsets.all(12),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)))),
      child:   Row(
        children: [
          Text(
            "Monthly",
            style: ResStyles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          const Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Color(0xFF064060),
          )
        ],
      ),
    );
  }
}
