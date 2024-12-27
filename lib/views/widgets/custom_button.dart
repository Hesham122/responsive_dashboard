import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.chcolr, this.textt, this.secColor});
  final Color? chcolr;
  final String? textt;
  final Color? secColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: chcolr ?? const Color(0xFF4EB7F2),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
        child: Text(
          textt ?? "Send Money",
          style: ResStyles.styleSimiBold18(context).copyWith(color: secColor?? Colors.white),
        ),
      ),
    );
  }
}
