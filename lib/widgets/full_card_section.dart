import 'package:flutter/cupertino.dart';

import '../utils/app_styles.dart';
import 'dots_indecator.dart';
import 'my_card_page_view.dart';

class FullCardSection extends StatefulWidget {
  const FullCardSection({
    super.key,
  });

  @override
  State<FullCardSection> createState() => _FullCardSectionState();
}

late PageController pageController;
int currentPageIndex = 0;

class _FullCardSectionState extends State<FullCardSection> {
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Card",
            style: Styles.styleSemiBold20(context),
          ),
          const SizedBox(
            height: 24,
          ),
          MyCardPageView(
            pageController: pageController,
          ),
          const SizedBox(
            height: 19,
          ),
          CustomDotIndecator(
            currentIndexPage: currentPageIndex,
          ),
        ],
      ),
    );
  }
}
