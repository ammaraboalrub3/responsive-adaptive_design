import 'package:flutter/cupertino.dart';
import 'package:responsive_adaptive_ui/widgets/quick_invoice.dart';

import 'all_expenses.dart';

class AllExpensessAndInvoiceSection extends StatelessWidget {
  const AllExpensessAndInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
