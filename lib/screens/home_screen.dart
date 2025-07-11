import 'package:flutter/material.dart';
import 'package:ticket_app/res/app_styles.dart';

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
      body: ListView(
        //Scrollable Effect
        children: [
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
                          color: Colors.cyan
                        )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Search Icon"), Text("Empty Space")],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
