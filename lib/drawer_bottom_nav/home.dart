import 'package:flutter/material.dart';
import 'package:flutter_all_widget/drawer_bottom_nav/widgets/navigation_drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
