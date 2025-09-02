import 'package:flutter/material.dart';
import 'package:flutter_all_widget/drawer_bottom_nav/Screens/notification.dart';
import '../Screens/favourites.dart';
import '../Screens/people_page.dart';
import '../Screens/plugins.dart';
import '../Screens/updates.dart';
import '../Screens/workflow.dart';

import '../widgets/drawer_widgets.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final name = 'Sarah Abs';
    final email = 'srhsgt@gmail.com';
    final urlImage = 'https://i.pravatar.cc/150?img=47';

    return Drawer(
      child: SafeArea(
        child: Material(
          color: const Color.fromRGBO(50, 75, 205, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () {},
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  children: [
                    const SizedBox(height: 18),
                    // buildSearchField(),
                    buildMenuItem(
                      text: 'People',
                      icon: Icons.people,
                      onClicked: () => selectedItem(context, 0),
                    ),
                    const SizedBox(height: 16),
                    buildMenuItem(
                      text: 'Favourites',
                      icon: Icons.favorite,
                      onClicked: () => selectedItem(context, 1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              buildMenuItem(
                text: "Workflow",
                icon: Icons.workspaces_outline,
                onClicked: () => selectedItem(context, 2),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: "Updates",
                icon: Icons.update,
                onClicked: () => selectedItem(context, 3),
              ),
              const SizedBox(height: 24),
              const Divider(color: Colors.white70),
              const SizedBox(height: 24),
              buildMenuItem(
                text: 'Plugins',
                icon: Icons.swipe,
                onClicked: () => selectedItem(context, 4),
              ),
              const SizedBox(height: 16),
              buildMenuItem(
                text: 'Notification',
                icon: Icons.notification_add_outlined,
                onClicked: () => selectedItem(context, 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => PeoplePage()));
      break;
    case 1:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Favourites()));
      break;
    case 2:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Workflow()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Updates()));
      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Plugins()));
      break;
    case 5:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => NotificationWidget()));
      break;
  }
}
