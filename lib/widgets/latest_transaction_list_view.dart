import 'package:flutter/cupertino.dart';
import 'package:responsive_adaptive_ui/models/user_info_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';
import 'package:responsive_adaptive_ui/widgets/custom_info.dart';

class LatestTransationsListView extends StatelessWidget {
  const LatestTransationsListView({
    super.key,
  });

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        subname: "Madraniadi20@gmail"),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        name: "Josua Nunito",
        subname: "Josh Nunito@gmail.com"),
    UserInfoModel(
        image: Assets.imagesAvatar1,
        name: "Madrani Andi",
        subname: "Josua Nunito"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(child: CustomInfo(userInfoModel: e));
        }).toList(),
      ),
    );
  }
}
