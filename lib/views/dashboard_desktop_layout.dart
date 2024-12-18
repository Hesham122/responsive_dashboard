import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/allexpenses_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: CustomDrawer()),
      SizedBox(width: 20,),
      Expanded(
        flex: 2,
        child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(height: 30,),
            AllExpensesWidget(),
            SizedBox(height: 24,),
           QuickInvoice()
          ],
                ),
        )) 
      ],
    );
  }
}
