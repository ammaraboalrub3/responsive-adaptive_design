import 'package:flutter/cupertino.dart';

import 'income_chart.dart';
import 'income_data_list_view.dart';
import 'named_detailes_income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width <= 1500
        ? const DetailwsIncomeChart()
        : const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDataListView()),
            ],
          );
  }
}
