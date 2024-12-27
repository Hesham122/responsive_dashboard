import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xFF4EB7F2) : const Color(0xFFAAAAAA) ,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
