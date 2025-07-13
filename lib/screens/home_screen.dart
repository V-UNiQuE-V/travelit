import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import '../base/res/app_styles.dart';
import '../base/res/media.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //Widgets: Column, ListView, ListView.builder, Expand
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        //Scrollable Effect
        children: [
          const SizedBox(height: 40),
          //To put things on Top of each other use Column Widget, Empty space is also a widget
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // color: Colors.grey,
            child: Column(
              //Widgets are List inside Widgets. Widgets are represented by children
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      //Horizontal Axis for Column
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headLineStyle3),
                        //Create some space between them
                        SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.headLineStyle1),
                      ],
                    ),
                    Container(
                        width: 50, height: 50,
                        //Styling a vector
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.cyan,
                          image: DecorationImage(
                            //ImageProvider - diff. classes in flutter eg: NetworkImage - loads image from the Internet
                              image: AssetImage(AppMedia.logo)//Tells the code where images are located
                          )
                        )
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //Decoration: Search Bar
                    children: [
                      Icon(Icons.search_outlined, color: Color(0xFFbfc205)),
                      Text("Search"),
                    ]
                  ),
                ),
                const SizedBox(height: 40),
                //Other Section
                AppDoubleText(bigText: 'Upcoming Flights', smallText: 'View all'), //Passing the text to the widget


                // const SizedBox(height: 40),
                // AppDoubleText(bigText: 'Upcoming Meetings', smallText: 'View all')
              ],
            ),
          )
        ],
      ),
    );
  }
}
