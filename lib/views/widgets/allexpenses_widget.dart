import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_listview.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(child:  Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListview()
        ],
      ),);
  }
}
