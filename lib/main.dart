import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import 'base/utils/app_routes.dart';

void main() { // main() : Entry point for Dart
  runApp(const MyApp()); // runApp() : Entry point for Flutter Framework
}

/* Stateless widget is an abstract class whose constructor requires key attribute thus the child class MyApp passes the value
 through it's constructor
 */

/*
Every class is a Widget when it extends a Stateless or a Stateful widget.
In stateless widget value changes aren't redrawn on UI.
In stateful widget value changes are reflected on UI.
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BottomNavBar(),
      routes: {
        //data pre-processing
        AppRoutes.homePage : (context) => BottomNavBar(),
        AppRoutes.allTickets : (context) => AllTickets(),
        AppRoutes.ticketScreen : (context) => TicketScreen()
      }
    );
  }
}

