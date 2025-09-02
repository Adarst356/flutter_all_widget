import 'package:flutter/material.dart' hide NavigationDrawer;
import 'bottom_nav_widget.dart';
import 'drawer_widget.dart';


class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("🏠 Home Page", style: TextStyle(fontSize: 25))),
    Center(child: Text("👤 Profile Page", style: TextStyle(fontSize: 25))),
    Center(child: Text("🔔 Notifications Page", style: TextStyle(fontSize: 25))),
    Center(child: Text("📤 Share Page", style: TextStyle(fontSize: 25))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(["Home", "Profile", "Notification", "Share"][_selectedIndex]),
        backgroundColor: Colors.blue,
      ),
      drawer:
      NavigationDrawer(
        selectedIndex: _selectedIndex,
        onItemSelected: _onItemTapped,
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
