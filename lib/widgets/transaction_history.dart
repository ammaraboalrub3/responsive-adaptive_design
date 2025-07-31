import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_header.dart';
import 'package:responsive_adaptive_ui/widgets/transaction_items_listView.dart';

import 'custom_income.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "13 April 2022",
            style: Styles.styleMeduim16(context)
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionItemsListView(),
        const SizedBox(
          height: 20,
        ),
        const IncomeSection(),
      ],
    );
  }
}
