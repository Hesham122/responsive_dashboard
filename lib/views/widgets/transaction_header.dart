import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
          Text(
          "Transaction History",
          style: ResStyles.styleSimiBold20(context),
        ),
        Text(
          "See All",
          style: ResStyles.styleMedium16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
