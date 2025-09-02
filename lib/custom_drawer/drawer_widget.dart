import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  final Function(int) onItemSelected;
  final int selectedIndex;

  const NavigationDrawer({
    super.key,
    required this.onItemSelected,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final drawerItems = [
      {"icon": Icons.home, "title": "Home"},
      {"icon": Icons.person, "title": "Profile"},
      {"icon": Icons.notifications, "title": "Notification"},
      {"icon": Icons.share, "title": "Share"},
    ];

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Fusion Code"),
              accountEmail: Text("fusion@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ3iCboKnT-YUYXRVyj4owpKoPazvoce-Faw&s"),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerItems.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return ListTile(
                    leading: Icon(
                      drawerItems[index]["icon"] as IconData,
                      color: isSelected ? Colors.blue : Colors.grey[700],
                    ),
                    title: Text(
                      drawerItems[index]["title"] as String,
                      style: TextStyle(
                        color: isSelected ? Colors.blue : Colors.black87,
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      onItemSelected(index);
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
