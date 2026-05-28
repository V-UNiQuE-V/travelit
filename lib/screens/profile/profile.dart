import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_styles.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/heading_text.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo
              Container(
                width: 86,
                height: 86,
                // color: Colors.red,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                          AppMedia.logo
                      )
                  )
                ),
              ),
              SizedBox(width: 10),
              // column text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(text: "Book Tickets", isColor: false),
                  Text("New-York", style: AppStyles.headLineStyle4),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppStyles.profileLocationColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor
                          ),
                          child: Icon(Icons.shield_sharp, color: Colors.white,size: 15),
                        ),
                        SizedBox(width: 5),
                        Text("Premium Status", style: TextStyle(
                          color: AppStyles.profileTextColor,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                      
                    ),
                  )
                ]
              ),
              Expanded(child: Container()),
              Text(
                  "Edit",
                  style: TextStyle(
                    color: AppStyles.primaryColor,
                    fontWeight: FontWeight.w300
                  )
              ),

            ],
          ),
          SizedBox(height: 8),
          //divider
          Divider(color: Colors.grey.shade300,),
          SizedBox(width: 40),
          // card
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity, // takes the possible amt. of width
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18)
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentIcons.lightbulb_filament_24_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(text: "You've got a new award"),
                        Text("You have 95 flights in a year", style: TextStyle(
                         color: Colors.white.withOpacity(0.8),
                         fontWeight: FontWeight.w500
                        ))
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: Color(0xFF264CD2)
                      )
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          Text("Accumulated miles", style: AppStyles.headLineStyle2),
          Container(
            // color: Colors.white70,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Text("192802", style: TextStyle(
                  fontSize: 45, fontWeight: FontWeight.w600, color: AppStyles.textColor
                )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyleFourth(text: "Miles accrued", isColor: false),
                    TextStyleFourth(text: "11 June 2022", isColor: false),
                  ],
                ),
                SizedBox(height: 4),
                Divider(color: Colors.grey.shade300,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: "23 042", bottomText: "Miles", isColor: false),
                    AppColumnTextLayout(topText: "Airline CO", bottomText: "Received from", isColor: false, alignment: CrossAxisAlignment.end)
                  ],
                ),
                SizedBox(height: 4),
                Divider(color: Colors.grey.shade300,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: "24", bottomText: "Miles", isColor: false),
                    AppColumnTextLayout(topText: "McDonal's", bottomText: "Received from", isColor: false, alignment: CrossAxisAlignment.end)
                  ],
                ),
                SizedBox(height: 4),
                Divider(color: Colors.grey.shade300,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(topText: "53 340", bottomText: "Miles", isColor: false),
                    AppColumnTextLayout(topText: "DBestech", bottomText: "Received from", isColor: false, alignment: CrossAxisAlignment.end)
                  ],
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    print("Tapped");
                  },
                  child: Text("How to get more miles", style: AppStyles.textStyle.copyWith(
                      fontWeight: FontWeight.w500, color: AppStyles.primaryColor
                  )),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
