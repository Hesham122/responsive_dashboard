import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return width > 1270 && width < 1950
        ? const Expanded(child:   DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
