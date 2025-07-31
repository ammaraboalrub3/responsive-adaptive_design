import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_container_background.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice_form.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice_header.dart';

import 'latest_transactions.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransactions(),
        SizedBox(
          height: 24,
        ),
        Divider(
          thickness: 1,
          color: Color(0xffF1F1F1),
        ),
        SizedBox(
          height: 24,
        ),
        QuickIvoiceForm(),
      ],
    ));
  }
}
