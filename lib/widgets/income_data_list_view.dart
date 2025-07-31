import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/item_income_model.dart';

import 'income_data.dart';

class IncomeDataListView extends StatelessWidget {
  const IncomeDataListView({super.key});

  static List<ItemIncomeModel> items = const [
    ItemIncomeModel(
        title: "Design service", trailing: "40%", color: Color(0xff208CC8)),
    ItemIncomeModel(
        title: "Design product", trailing: "25%", color: Color(0xff4EB7F2)),
    ItemIncomeModel(
        title: "Product royalti", trailing: "20%", color: Color(0xff064061)),
    ItemIncomeModel(title: "Other", trailing: "22%", color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeData(itemIncomeModel: e)).toList(),
    );
  }
}
