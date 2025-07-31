import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    required this.isActive,
  });

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                    shape: const OvalBorder(),
                    color: isActive
                        ? const Color(0xffFAFAFA).withOpacity(0.1)
                        : const Color(0xffFAFAFA)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                      child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        isActive ? Colors.white : const Color(0xff4EB7F2),
                        BlendMode.srcIn),
                  )),
                ),
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isActive ? Colors.white : const Color(0xff064061),
        ),
      ],
    );
  }
}
