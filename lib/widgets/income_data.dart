import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/item_income_model.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';
import 'package:responsive_adaptive_ui/widgets/custom_dot_item_income.dart';

class IncomeData extends StatelessWidget {
  const IncomeData({super.key, required this.itemIncomeModel});

  final ItemIncomeModel itemIncomeModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 35),
      horizontalTitleGap: 2,
      leading: CustomDotIncomeItem(color: itemIncomeModel.color),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          itemIncomeModel.title,
          style: Styles.styleRegular16(context),
        ),
      ),
      trailing: Text(
        itemIncomeModel.trailing,
        style: Styles.styleMeduim16(context),
      ),
    );
  }
}
