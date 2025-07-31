import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_container_background.dart';

import 'income_header.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
        child: Column(
      children: [
        IncomeHeader(),
        SizedBox(
          height: 16,
        ),
        IncomeSectionBody(),
      ],
    ));
  }
}
