import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/models/user_info_model.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class UserInfolistile extends StatelessWidget {
  const UserInfolistile(
      {super.key,
      required this.userInfoModel});
  
final  UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.title,
          style: ResStyles.styleSimiBold16,
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: ResStyles.styleRegular12,
        ),
      ),
    );
  }
}
