import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utls/app_assets.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: const Color(0xFF4EB7F2),
          image: const DecorationImage(
            fit: BoxFit.fill,
              image: AssetImage(Assets.imagesCardBackground)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 15),
              title: Text(
                "Name Card",
                style: ResStyles.styleRegular16(context).copyWith(color: Colors.white),
              ),
              subtitle:   Text(
                "Sayah Bandi",
                style: ResStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style:
                        ResStyles.styleSimiBold24(context).copyWith(color: Colors.white),
                  ),
                  Text(
                    " 12/20 - 124 ",
                    style:
                        ResStyles.styleRegular16(context).copyWith(color: Colors.white),
                  ),
                
                ],
              ),
            ),
       const Flexible(
         child: SizedBox(
          height: 22,
         ),
       )
          ],
        ),
      ),
    );
  }
}
