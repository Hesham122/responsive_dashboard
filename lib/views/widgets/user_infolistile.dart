import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.title,
            style: ResStyles.styleSimiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            userInfoModel.subTitle,
            style: ResStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
