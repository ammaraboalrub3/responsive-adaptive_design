import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/models/user_info_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/tow_list_item_drawer.dart';

import 'custom_info.dart';
import 'listview_drawers_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: CustomInfo(
            userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar1,
                name: "Lekan Okeowo",
                subname: "demo@gmail.com"),
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          ListViewDrawersItem(),
          SliverFillRemaining(hasScrollBody: false, child: TowListItemDrawer()),
        ],
      ),
    );
  }
}
