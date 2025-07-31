import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_ui/models/drawers_item_model.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';

import '../utils/app_styles.dart';

class CustomOneItemInDrawers extends StatelessWidget {
  const CustomOneItemInDrawers({
    super.key,
    required this.drawersItemModel,
    required this.isActive,
  });
  final DrawersItemModel drawersItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawersItemModel.image),
      trailing: isActive
          ? SvgPicture.asset(Assets.imagesRectangle)
          : const SizedBox(),
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(
          drawersItemModel.text,
          style: isActive
              ? Styles.styleBold16(context)
              : Styles.styleRegular16(context),
        ),
      ),
    );
  }
}
