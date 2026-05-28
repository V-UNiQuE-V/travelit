import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/screens/profile/profile.dart';
import 'package:ticket_app/screens/search/search_screen.dart';

import '../screens/home/home_screen.dart';
import '../screens/ticket/ticket_screen.dart';


class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  /*
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
*/

  // If we have a dart class we can create an object by instantiating the class.

  // dependency injection
  final BottomNavController controller = Get.put(BottomNavController());

  final appScreens = [
    // const Center(child: Text("Home")),
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
  /*
  //change our index for BottomNavBar
  //change active icons: Usage Of setState
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() { // helps to update the UI
      _selectedIndex = index;
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    print("tab val: ${controller.selectedIndex.value}");

    return Obx(() { //Obx shows the rerendered UI.
      return Scaffold(
        // appBar: AppBar(title: Text("My tickets"), centerTitle: true),
        body: appScreens[controller.selectedIndex.value], // According to the item selected state of body is changing
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex.value, // helps in changing the active icon status.
          onTap: controller.onItemTapped,
          /* when the bottom nav icons are clicked onTap helps to identify which icon was clicked and passes the index of selected
           icon's index to our private defined function onItemTapped.
         */
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF356400),
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search_outlined), activeIcon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket_outlined), activeIcon: Icon(Icons.airplane_ticket),
              label: "Tickets",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), activeIcon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      );
    });
  }
}
