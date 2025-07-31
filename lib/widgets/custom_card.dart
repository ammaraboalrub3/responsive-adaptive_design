import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            color: const Color(0xff4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    "Name card",
                    style: Styles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                ),
                subtitle: Text(
                  "Syah Bandi",
                  style: Styles.styleMeduim20(context),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Expanded(child: SizedBox()),
              Text(
                "0918 8124 0042 8129",
                style: Styles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                "12/20 - 124",
                style: Styles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
