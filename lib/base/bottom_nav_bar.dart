import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final appScreens = [
    const HomeScreen(),
    const Center(child: Text("Search")),
    const Center(child: Text("Tickets")),
    const Center(child: Text("Profile")),
  ];
  //change our index for BottomNavBar
  //change active icons: Usage Of setState
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My tickets"), centerTitle: true),
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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
  }
}
