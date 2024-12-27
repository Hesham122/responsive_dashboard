// Implements a responsive layout in Flutter using LayoutBuilder to render different layouts based on screen size breakpoints.
import 'package:flutter/material.dart';
 

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: mobileLayout(context),
          );
        } else if (constraints.maxWidth < 1270) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12), 
            child: tabletLayout(context),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: desktopLayout(context),
          );
        }
      },
    );
  }
}
