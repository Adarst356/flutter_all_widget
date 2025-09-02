import 'package:flutter/material.dart';
import 'package:flutter_all_widget/animatedDrawer/menu_items.dart';
import 'package:flutter_all_widget/animatedDrawer/menu_rows.dart';

class SildeMenu extends StatefulWidget {
  const SildeMenu({super.key});

  @override
  State<SildeMenu> createState() => _SildeMenuState();
}

class _SildeMenuState extends State<SildeMenu> {
  final List<MenuItemModel> _browserMenuIcons = MenuItemModel.menuItems;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      constraints: const BoxConstraints(maxWidth: 288),
      decoration: BoxDecoration(
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.2),
                  foregroundColor: Colors.white,
                  child: const Icon(Icons.person_outline),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Anshu",
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Text(
                      "Software Engineer",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 15,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24,right: 24,top: 48),
            child: Text(
              "BROWSE",
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 15,
               fontStyle: FontStyle.normal,
               fontWeight: FontWeight.w600
              ),
            ),
          ),
          MenuRows(
              menu: _browserMenuIcons[0],
          )
        ],
      ),
    );
  }
}
