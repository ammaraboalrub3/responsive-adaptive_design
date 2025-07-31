import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/all_expenses_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

import 'all_expenses_item_header.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: isActive ? const Color(0xff4EB7F2) : Colors.white,
          shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
              borderRadius: BorderRadius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isActive: isActive,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.text,
              style: isActive
                  ? Styles.styleSemiBold16(context)
                      .copyWith(color: Colors.white)
                  : Styles.styleSemiBold16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: isActive
                  ? Styles.styleRegular12(context).copyWith(color: Colors.white)
                  : Styles.styleRegular12(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: isActive
                  ? Styles.styleSemiBold24(context)
                      .copyWith(color: Colors.white)
                  : Styles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
