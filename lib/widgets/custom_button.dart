import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.textColor,
    required this.text,
    this.fontSize,
  });

  final Color color;
  final Color textColor;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              backgroundColor: color),
          onPressed: () {},
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                text,
                style: Styles.styleSemiBold18(context)
                    .copyWith(color: textColor, fontSize: fontSize ?? 18),
              ),
            ),
          )),
    );
  }
}
