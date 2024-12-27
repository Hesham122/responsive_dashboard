import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/models/all_expenses_model.dart';
import 'package:responsive_dashboard/views/widgets/not_selected_item_expenses.dart';
import 'package:responsive_dashboard/views/widgets/selected_item_expenses.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesModel, required this.iselected});
  final bool iselected;
  final AllExpensesModel allExpensesModel;
  @override
  Widget build(BuildContext context) {
    return iselected?SelectedItemExpenses(allExpensesModel: allExpensesModel):
    NotSelectedItemExpenses(allExpensesModel: allExpensesModel);
  }
}

