import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_container_background.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_history.dart';

import 'full_card_section.dart';

class MyCardANdTransactionHistorySection extends StatelessWidget {
  const MyCardANdTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: CustomContainerBackground(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          Expanded(child: TransactionHistory()),
        ],
      )),
    );
  }
}
