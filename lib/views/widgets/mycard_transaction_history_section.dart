import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/views/widgets/transction_history.dart';

class MycardTransactionHistorySection extends StatelessWidget {
  const MycardTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child:     Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40 ,
            color: Color(0xffF1F1F1),
          ),
          TransctionHistory()
        ],
      ),
    );
  }
}
