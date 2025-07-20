import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(height: 40),
          Text("What are\nyou looking for?", style: AppStyles.headLineStyle1.copyWith(
              fontSize: 35
          )),
          SizedBox(height: 20),
          AppTicketTabs(),
        ],
      )
    );
  }
}
