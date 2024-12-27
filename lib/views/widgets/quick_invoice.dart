import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 20,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForm(),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                chcolr: Colors.white,
                secColor: Color(0xFF4EB7F2),
                textt: "Send Money",
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    ));
  }
}
