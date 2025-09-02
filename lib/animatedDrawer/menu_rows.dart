import 'package:flutter/material.dart';
import 'package:flutter_all_widget/animatedDrawer/menu_items.dart';
import 'package:rive/rive.dart';

class MenuRows extends StatelessWidget {
  final MenuItemModel menu;
  const MenuRows({super.key,required this.menu});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 32,
            height: 32,

        )
      ],

    );
  }
}
