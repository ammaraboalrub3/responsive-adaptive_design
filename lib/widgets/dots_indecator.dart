import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_dot.dart';

class CustomDotIndecator extends StatelessWidget {
  const CustomDotIndecator({super.key, required this.currentIndexPage});

  final int currentIndexPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDot(isActive: index == currentIndexPage),
        );
      }),
    );
  }
}
