import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.styleMeduim16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
