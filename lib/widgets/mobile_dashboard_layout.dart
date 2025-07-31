import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_history.dart';

import 'all_expenses_and_invoice_section.dart';
import 'full_card_section.dart';

class MobileDashboardLayout extends StatelessWidget {
  const MobileDashboardLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndInvoiceSection(),
          SizedBox(
            height: 20,
          ),
          FullCardSection(),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 1,
            color: Color(0xffF1F1F1),
          ),
          SizedBox(
            height: 20,
          ),
          TransactionHistory()
        ],
      ),
    );
  }
}
