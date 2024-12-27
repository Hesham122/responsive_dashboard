import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/allexpensess_and_quickinvoice.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/mycard_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:   Column(
        children: [
          AllExpenssesAndQuickInvoiceSection(),
          SizedBox(height: 24,),
          MycardTransactionHistorySection(),
          SizedBox(height: 24,),
          IncomeSection(),
        ],
      ),
    );
  }
}