import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/widgets/custom_button.dart';
import 'package:responsive_adaptive_ui/widgets/title_text_field.dart';

class QuickIvoiceForm extends StatelessWidget {
  const QuickIvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Customer name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: "Item name",
                hintText: "Type item name",
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: "Item mount",
                hintText: "USD",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
                child: CustomButton(
              text: "Add more details",
              color: Colors.white,
              textColor: Color(0xff4EB7F2),
            )),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: CustomButton(
              text: "Send Money",
              color: Color(0xff4EB7F2),
              textColor: Colors.white,
            )),
          ],
        ),
      ],
    );
  }
}
