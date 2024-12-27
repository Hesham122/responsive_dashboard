import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_header.dart';
import 'package:responsive_dashboard/views/widgets/transaction_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20,),
        Text(
          "13 April 2022",
          style: ResStyles.styleMedium16(context).copyWith(
            color:const Color(0xFFAAAAAA) ,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
       const TransactionListView()
      ],
    );
  }
}

