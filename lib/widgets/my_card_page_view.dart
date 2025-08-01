import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8),
            child: CustomCard(),
          );
        }));
  }
}
