import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utls/models/drawer_model.dart';
import 'package:responsive_dashboard/utls/styles.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: ResStyles.styleMedium16,
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerModel,
  });

  final DrawerModel drawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerModel.image),
      title: Text(
        drawerModel.title,
        style: ResStyles.styleBold16,
      ),
      trailing: Container(
        width: 3.75,
        color: const Color(0xFF4EB7F2),
      ),
    );
  }
}
