import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/all_expenses_items.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int activeIndex = 0;

  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        text: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        text: "Income",
        date: "April 2022",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        text: "Expenses",
        date: "April 2022",
        price: r"$20,129")
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItems(
                isActive: activeIndex == 0, allExpensesItemModel: items[0]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItems(
                isActive: activeIndex == 1, allExpensesItemModel: items[1]),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItems(
                isActive: activeIndex == 2, allExpensesItemModel: items[2]),
          ),
        ),
      ],
    );
  }

  void updateIndex(index) {
    return setState(() {
      if (activeIndex != index) {
        setState(() {
          activeIndex = index;
        });
      }
    });
  }
}
