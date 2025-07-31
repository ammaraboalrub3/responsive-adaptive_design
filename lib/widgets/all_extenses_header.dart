import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'optivnal_selction.dart';

class AllExtensesHeader extends StatelessWidget {
  const AllExtensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: Styles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const OptionalSellection(),
      ],
    );
  }
}
