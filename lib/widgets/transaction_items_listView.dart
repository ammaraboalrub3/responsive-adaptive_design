import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/transaction_model.dart';
import 'package:responsive_adaptive_ui/widgets/transactions_item.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({super.key});

  final List<TransactionModel> items = const [
    TransactionModel(
        title: "Cash Withdrawal",
        amount: r"$20,129",
        data: "13 Apr, 2022 ",
        isWithdrowal: true),
    TransactionModel(
        title: "Landing Page project",
        amount: r"$$2,000",
        data: "13 Apr, 2022 at 3:30 PM ",
        isWithdrowal: false),
    TransactionModel(
        title: "Juni Mobile App project",
        amount: r"$20,129",
        data: "13 Apr, 2022 at 3:30 PM ",
        isWithdrowal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => TransactionsItem(transactionModel: e)).toList(),
    );
  }
}
