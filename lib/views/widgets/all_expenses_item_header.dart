import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
    const AllExpensesItemHeader({super.key, required this.image, this.iswhite, this.isblue});
  final String image;
  final  Color? iswhite,isblue;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration:   ShapeDecoration(
              color:iswhite?? const Color(0xFFFAFAFA), 
              shape: OvalBorder()),
          child: Center(child: SvgPicture.asset(image,
          colorFilter: ColorFilter.mode(isblue?? const Color(0xFF4EB7F2),BlendMode.srcIn),
          )),
        ),
        // const Expanded(child: SizedBox()),
          Icon(
          Icons.arrow_forward_ios_outlined,
          color:isblue?? const Color(0xFF064060),
        )
      ],
    );
  }
}
