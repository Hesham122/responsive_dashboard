import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: ResStyles.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: builderBorder(),
          enabledBorder: builderBorder(),
          focusedBorder: builderBorder()),
    );
  }

  OutlineInputBorder builderBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFFFAFAFA),
        ));
  }
}
