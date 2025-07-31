import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/drawers_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/custom_one_item_in_drawers.dart';

class ListViewDrawersItem extends StatefulWidget {
  const ListViewDrawersItem({super.key});

  @override
  State<ListViewDrawersItem> createState() => _ListViewDrawersItemState();
}

class _ListViewDrawersItemState extends State<ListViewDrawersItem> {
  final List<DrawersItemModel> items = const [
    DrawersItemModel(image: Assets.imagesDashbord, text: "Dashboard"),
    DrawersItemModel(image: Assets.imagesMyTrasactions, text: "My Trasactions"),
    DrawersItemModel(image: Assets.imagesStatistic, text: "Statistic"),
    DrawersItemModel(image: Assets.imagesWallet, text: "Wallet Account"),
    DrawersItemModel(image: Assets.imagesInvensment, text: "My Invensment"),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomOneItemInDrawers(
                drawersItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
