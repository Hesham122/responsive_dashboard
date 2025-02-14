import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: ResStyles.styleMedium16(context),
        ),
        const LatestTransactionListview()
      ],
    );
  }
}
