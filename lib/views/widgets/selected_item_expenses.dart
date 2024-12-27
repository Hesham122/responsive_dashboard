import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/models/all_expenses_model.dart';
import 'package:responsive_dashboard/utls/styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_header.dart';

class SelectedItemExpenses extends StatelessWidget {
  const SelectedItemExpenses({super.key, required this.allExpensesModel});
  final AllExpensesModel allExpensesModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4EB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesModel.image,
            isblue: Colors.white,
            iswhite: Colors.white.withOpacity(0.10000000149011612),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.title,
              style: ResStyles.styleMedium16(context)
                  .copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.date,
              style: ResStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesModel.price,
              style: ResStyles.styleMedium20(context),
            ),
          ),
        ],
      ),
    );
  }
}
