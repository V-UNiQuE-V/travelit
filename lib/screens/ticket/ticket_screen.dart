import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';

import '../../base/widgets/app_column_text_layout.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text("Tickets", style: AppStyles.headLineStyle1),
          SizedBox(height: 20),
          AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.only(bottom: 0),
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[0], isColor: true)
          ),
          // SizedBox(height: 1),
          //Trick
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketColor,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: "Flutter DB", bottomText: "Passenger", isColor: true),
                    AppColumnTextLayout(topText: "5221 364869", bottomText: "passport", isColor: true, alignment: CrossAxisAlignment.end),
                  ],
                ),
                SizedBox(height: 20),
                AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: "364738 28274478", bottomText: "Number of E-ticket", isColor: true),
                    AppColumnTextLayout(topText: "B2SG28", bottomText: "Booking code", isColor: true, alignment: CrossAxisAlignment.end),
                  ],
                ),
                SizedBox(height: 20),
                AppLayoutBuilderWidget(randomDivider: 15, width: 5, isColor: false),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(AppMedia.visaCard, scale: 11),
                            Text(" *** 2462", style: AppStyles.headLineStyle3)
                          ],
                        ),
                        SizedBox(height: 5),
                        Text("Payment method", style: AppStyles.headLineStyle4)
                      ],
                    ),
                    AppColumnTextLayout(topText: "\$249.99", bottomText: "Price", isColor: true, alignment: CrossAxisAlignment.end),
                  ],
                ),
              ],
            )
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppStyles.ticketColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(21),
                bottomRight: Radius.circular(21)
              )
            ),
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Center(child: Text("Hello Flutter")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
