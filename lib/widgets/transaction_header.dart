import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Transaction History",
            style: Styles.styleSemiBold20(context),
          ),
          GestureDetector(
              onTap: () {},
              child: Text(
                "See all",
                style: Styles.styleMeduim16(context)
                    .copyWith(color: const Color(0xff4EB7F2)),
              ))
        ],
      ),
    );
  }
}
