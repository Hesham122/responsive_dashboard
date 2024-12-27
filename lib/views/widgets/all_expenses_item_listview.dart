import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/models/all_expenses_model.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  int isSelectesitem = 0;
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
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelectesitem != 0) {
                setState(() {
                  isSelectesitem = 0;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesModel: items[0],
              iselected: isSelectesitem == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelectesitem != 1) {
                setState(() {
                  isSelectesitem = 1;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesModel: items[1],
              iselected: isSelectesitem == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelectesitem != 2) {
                setState(() {
                  isSelectesitem = 2;
                });
              }
            },
            child: AllExpensesItem(
              allExpensesModel: items[2],
              iselected: isSelectesitem == 2,
            ),
          ),
        ),
      ],
    );
    // return Row(
    //     children: AllExpensesItemListview.items.asMap().entries.map(
    //   (e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return index == 1
    //         ? Expanded(
    //             child: GestureDetector(
    //               onTap: () {
    //                 if (isSelectesitem != index) {
    //                   setState(() {
    //                     isSelectesitem = index;
    //                   });
    //                 }
    //               },
    //               child: AllExpensesItem(
    //                 allExpensesModel: item,
    //                 iselected: isSelectesitem == index,
    //               ),
    //             ),
    //           )
    //         : Expanded(
    //             child: GestureDetector(
    //               onTap: () {
    //                 if (isSelectesitem != index) {
    //                   setState(() {
    //                     isSelectesitem = index;
    //                   });
    //                 }
    //               },
    //               child: AllExpensesItem(
    //                 allExpensesModel: item,
    //                 iselected: isSelectesitem == index,
    //               ),
    //             ),
    //           );
    //   },
    // ).toList());
  }
}
