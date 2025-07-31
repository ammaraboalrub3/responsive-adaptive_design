import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/transaction_model.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class TransactionsItem extends StatelessWidget {
  const TransactionsItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.data,
          style: Styles.styleRegular12(context),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithdrowal
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
