import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/models/drawer_model.dart';
import 'package:responsive_dashboard/utls/models/user_info_model.dart';
import 'package:responsive_dashboard/views/widgets/active_and_inactive_item.dart';

import 'package:responsive_dashboard/views/widgets/list_view_items.dart';
import 'package:responsive_dashboard/views/widgets/user_infolistile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfolistile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subTitle: "dema@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverToBoxAdapter(child: ListViewItems()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                InActiveDrawerItem(
                  drawerModel: DrawerModel(
                      title: "Setting System", image: Assets.imagesSettings),
                ),
                InActiveDrawerItem(
                  drawerModel: DrawerModel(
                      title: "Logout account", image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
