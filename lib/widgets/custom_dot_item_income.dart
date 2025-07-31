import 'package:flutter/material.dart';

class CustomDotIncomeItem extends StatelessWidget {
  const CustomDotIncomeItem({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: ShapeDecoration(
          color: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
    );
  }
}
