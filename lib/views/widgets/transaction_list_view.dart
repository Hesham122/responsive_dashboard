import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/models/transction_model.dart';
import 'package:responsive_dashboard/views/widgets/custom_transction_items.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static const items = [
    TransctionModel(
        title: "Cash With Drawal",
        date: "13 April 2022",
        amount: r"$20,129",
        isDrawal: true),
    TransctionModel(
        title: "Cash With Drawal",
        date: "13 April 2022",
        amount: r"$20,129",
        isDrawal: false),
    TransctionModel(
        title: "Mobile App Project",
        date: "13 April 2022",
        amount: r"$20,129",
        isDrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => CustomTransctionItems(transctionModel: e)).toList(),
    );
    // return SizedBox(
    //   height: 300,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return CustomTransctionItems(
    //         transctionModel: items[index],
    //       );
    //     },
    //   ),
    // );
  }
}
