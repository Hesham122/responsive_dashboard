import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/adaptive_layout.dart';
import 'package:responsive_dashboard/views/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DashboardDesktopLayout());
  }
}
