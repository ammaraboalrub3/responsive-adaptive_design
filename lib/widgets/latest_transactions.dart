import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

import 'latest_transaction_list_view.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: Styles.styleMeduim16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransationsListView(),
      ],
    );
  }
}
