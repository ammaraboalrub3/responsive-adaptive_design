import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_drower.dart';

import 'all_expenses_and_invoice_section.dart';
import 'my_card_and_transactions_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 5,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Padding(
                            padding: EdgeInsets.only(top: 40),
                            child: AllExpensessAndInvoiceSection(),
                          )),
                      SizedBox(
                        width: 32,
                      ),
                      Expanded(
                          flex: 2, child: MyCardANdTransactionHistorySection()),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
