import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/models/transction_model.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class CustomTransctionItems extends StatelessWidget {
  const CustomTransctionItems({super.key, required this.transctionModel});
  final TransctionModel transctionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transctionModel.title,
          style: ResStyles.styleSimiBold16(context),
        ),
        subtitle: Text(
          transctionModel.date,
          style: ResStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA) ,
          ),
        ),
        trailing: Text(
          transctionModel.amount,
          style: ResStyles.styleSimiBold20(context).copyWith(
            color: transctionModel.isDrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
