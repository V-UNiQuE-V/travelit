import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child:
      Row(
        children: [
          Icon(icon, color: AppStyles.planeColor),
          SizedBox(width: 10),
          Text(text, style: AppStyles.textStyle),
        ],
      )
    );
  }
}
