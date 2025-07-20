import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widgets/find_tickets.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          SizedBox(height: 25),
          AppTextIcon(text: "Departure",  icon: Icons.flight_takeoff_rounded),
          SizedBox(height: 20),
          AppTextIcon(text: "Arrival",  icon: Icons.flight_land_rounded),
          SizedBox(height: 25),
          FindTickets(),
          SizedBox(height: 40),
          AppDoubleText(bigText: 'Upcoming  Flights', smallText: 'View all', func: () => Navigator.pushNamed(context, "/all_tickets")),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: size.width * .42,
                height: 405,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  //Add Box Shadow
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSit)
                        )
                      ),
                    ),
                    SizedBox(height: 12),
                    Text("20% discount on the early booking of this flight. Don't miss", style: AppStyles.headLineStyle2)
                  ],
                )
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    width: size.width * .42,
                    height: 210,
                    decoration: BoxDecoration(
                      color: Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey", style: AppStyles.headLineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        )),
                        SizedBox(height: 10),
                        Text("Take the survey about our services and get discount", style: AppStyles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 18
                        )),
                      ],
                    )
                  )
                ],
              )
            ],
          )
        ] ,
      )
    );
  }
}
