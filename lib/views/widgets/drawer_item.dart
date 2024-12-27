import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/models/drawer_model.dart';
import 'package:responsive_dashboard/views/widgets/active_and_inactive_item.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem(
      {super.key, required this.drawerModel, required this.isActive});
  final DrawerModel drawerModel;
  final bool isActive;

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return widget.isActive ? ActiveDrawerItem(drawerModel: widget.drawerModel,) : InActiveDrawerItem(drawerModel: widget.drawerModel);
  }
}

