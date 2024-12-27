import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/allexpenses_widget.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpenssesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpenssesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensesWidget(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
 