import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
          hintStyle: Styles.styleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
          border: InputBorder.none,
          enabledBorder: customBorder(),
          focusedBorder: customBorder(),
          filled: true,
          fillColor: const Color(0xffFAFAFA)),
    );
  }

  OutlineInputBorder customBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Color(0xffFAFAFA)));
  }
}
