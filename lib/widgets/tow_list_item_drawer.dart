import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_ui/utils/app_images.dart';

import '../utils/app_styles.dart';

class TowListItemDrawer extends StatelessWidget {
  const TowListItemDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
            child: SizedBox(
          height: 20,
        )),
        CustomListTile(
          image: Assets.imagesSetting,
          text: "Setting Account",
        ),
        CustomListTile(
          image: Assets.imagesLogout,
          text: "Logout Account",
        ),
        SizedBox(
          height: 48,
        )
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        text,
        style: Styles.styleRegular16(context),
      ),
    );
  }
}
