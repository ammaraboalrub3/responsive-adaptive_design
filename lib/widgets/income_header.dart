import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';
import 'optivnal_selction.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Income",
          style: Styles.styleSemiBold16(context),
        ),
        const OptionalSellection(),
      ],
    );
  }
}
