import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class DetailwsIncomeChart extends StatefulWidget {
  const DetailwsIncomeChart({super.key});

  @override
  State<DetailwsIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailwsIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getData()));
  }

  PieChartData getData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pietouchResponse) {
            activeIndex =
                pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 0 ? 1 : null,
              titleStyle: Styles.styleMeduim16(context).copyWith(
                  color: activeIndex == 0 ? Colors.black : Colors.white),
              color: const Color(0xff208CC8),
              title: activeIndex == 0 ? "Design service" : "40%",
              value: 40,
              radius: activeIndex == 0 ? 60 : 50),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 1 ? 1 : null,
              titleStyle: Styles.styleMeduim16(context).copyWith(
                  color: activeIndex == 1 ? Colors.black : Colors.white),
              color: const Color(0xff4EB7F2),
              title: activeIndex == 1 ? "Design product" : "25%",
              value: 25,
              radius: activeIndex == 1 ? 60 : 50),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 2 ? 1 : null,
              titleStyle: Styles.styleMeduim16(context).copyWith(
                  color: activeIndex == 2 ? Colors.black : Colors.white),
              color: const Color(0xff064061),
              title: activeIndex == 2 ? "Product royalti" : "20%",
              value: 20,
              radius: activeIndex == 2 ? 60 : 50),
          PieChartSectionData(
              titlePositionPercentageOffset: activeIndex == 3 ? 1 : null,
              titleStyle: Styles.styleMeduim16(context).copyWith(
                  color: activeIndex == 3 ? Colors.black : Colors.white),
              color: const Color(0xffE2DECD),
              title: activeIndex == 3 ? "Other" : "22%",
              value: 22,
              radius: activeIndex == 3 ? 60 : 50),
        ]);
  }
}
