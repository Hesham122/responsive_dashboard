import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/allexpensess_and_quickinvoice.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/mycard_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
          
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: AllExpenssesAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 30, 
                        ),
                        MycardTransactionHistorySection(),
                        SizedBox(
                          height: 24,
                        ),
                        Expanded(child: IncomeSection())
                      ],
                    ))
          
          ],
                ),
              )
            ],
          ),
        )
      
      ],
    );
  }
}
