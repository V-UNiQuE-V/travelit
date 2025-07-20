import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';


class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const AppColumnTextLayout({super.key, this.alignment = CrossAxisAlignment.start, required this.topText, required this.bottomText, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText, isColor: isColor),
        SizedBox(height: 3),
        TextStyleFourth(text: bottomText, isColor: isColor)
      ],
    );
  }
}
