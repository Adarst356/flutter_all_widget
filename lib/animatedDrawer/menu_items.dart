import 'package:flutter/cupertino.dart';
import 'package:flutter_all_widget/animatedDrawer/tab_item.dart';

class MenuItemModel{
  MenuItemModel({
    this.id,
    this.title = "",
    required this.riveIcon
});

  UniqueKey? id = UniqueKey();
  String title;
  TabItem riveIcon;

  static List<MenuItemModel>menuItems = [
    MenuItemModel(
      title: 'Home',
        riveIcon: TabItem(stateMachine: "HOME_interactivity",artboard: "HOME")
    ),
    MenuItemModel(
        title: 'Home',
        riveIcon: TabItem(stateMachine: "SEARCH_interactivity",artboard: "SEARCH")
    ),
    MenuItemModel(
        title: 'Home',
        riveIcon: TabItem(stateMachine: "STAR_interactivity",artboard: "LIKE/STAR")
    ),
    MenuItemModel(
        title: 'Home',
        riveIcon: TabItem(stateMachine: "CHAT_interactivity",artboard: "CHAT")
    ),
  ];
}