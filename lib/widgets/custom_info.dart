import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_ui/models/user_info_model.dart';

import '../utils/app_styles.dart';

class CustomInfo extends StatelessWidget {
  const CustomInfo({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.name,
            style: Styles.styleSemiBold16(context),
          ),
          subtitle: Text(
            userInfoModel.subname,
            style: Styles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
