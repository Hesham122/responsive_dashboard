import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/models/all_expenses_model.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});
  static List items = [
    AllExpensesModel(
        image: Assets.imagesIncome,
        date: "April 2022",
        price: r"$20.49",
        title: "Balance"),
    AllExpensesModel(
        image: Assets.imagesBalance,
        date: "April 2022",
        price: r"$20.49",
        title: "Income"),
    AllExpensesModel(
        image: Assets.imagesExpenses,
        date: "April 2022",
        price: r"$20.49",
        title: "Expenses"),
  ];

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  int isSelectesitem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: AllExpensesItemListview.items.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
            child: index == 1
                ? GestureDetector(
                    onTap: () {
                      if (isSelectesitem != index) {
                        setState(() {
                          isSelectesitem = index;
                        });
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: AllExpensesItem(
                        allExpensesModel: item,
                        iselected: isSelectesitem == index,
                      ),
                    ),
                  )
                : Expanded(
                  child: GestureDetector(
                    onTap: () {
                        if (isSelectesitem != index) {
                          setState(() {
                            isSelectesitem = index;
                          });
                        }
                      },
                    child: AllExpensesItem(
                      allExpensesModel: item,
                      iselected: isSelectesitem == index,
                    ),
                  ),
                ));
      },
    ).toList());
  }
}
