import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({super.key, required this.child, this.pad});
final Widget child;
  final double? pad;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.all(pad??20),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child:child
    );
  }
}