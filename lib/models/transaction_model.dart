class TransactionModel {
  final String title, data, amount;
  final bool isWithdrowal;

  const TransactionModel(
      {required this.title,
      required this.amount,
      required this.data,
      required this.isWithdrowal});
}
