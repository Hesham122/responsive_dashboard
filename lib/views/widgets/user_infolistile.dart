import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class UserInfolistile extends StatelessWidget {
  const UserInfolistile({super.key, required this.image, required this.title, required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color:const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: ResStyles.styleSimiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: ResStyles.styleRegular12,
        ),
      ),
    );
  }
}
