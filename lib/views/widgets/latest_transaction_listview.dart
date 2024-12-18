import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/models/user_info_model.dart';
import 'package:responsive_dashboard/views/widgets/user_infolistile.dart';

class LatestTransactionListview extends StatelessWidget {
  const LatestTransactionListview({super.key});
  static const List infoData = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: "Hesham Mohamed",
        subTitle: "hesham@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: "Lekan Okeowo",
        subTitle: "dema@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: "Ali Okeowo",
        subTitle: "Ali@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: infoData
            .map(
                (e) => IntrinsicWidth(child: UserInfolistile(userInfoModel: e)))
            .toList(),
      ),
    );

    //  SizedBox(
    //   height: 100,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: infoData.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfolistile(
    //           userInfoModel: infoData[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
