import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/models/drawer_model.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class ListViewItems extends StatefulWidget {
  const ListViewItems({
    super.key,
  });

  @override
  State<ListViewItems> createState() => _ListViewItemsState();
}

final List<DrawerModel> items = [
  const DrawerModel(title: "Dashboard", image: Assets.imagesDashboard),
  const DrawerModel(title: "My Transation", image: Assets.imagesMyTransctions),
  const DrawerModel(title: "Statictics", image: Assets.imagesStatistics),
  const DrawerModel(title: "Wallet Accont", image: Assets.imagesWalletAccount),
  const DrawerModel(title: "My Investments", image: Assets.imagesMyInvestments),
];
int isSelecteditem = 0;

class _ListViewItemsState extends State<ListViewItems> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (isSelecteditem != index) {
              setState(() {
                isSelecteditem = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerModel: items[index],
              isActive: isSelecteditem==index,
            ),
          ),
        );
      },
    );
  }
}
