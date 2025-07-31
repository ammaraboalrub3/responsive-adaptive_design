import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick invoice",
          style: Styles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
              color: Color(0xffFAFAFA), shape: OvalBorder()),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
