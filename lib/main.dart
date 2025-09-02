import 'package:flutter/material.dart';
import 'package:flutter_all_widget/ScrollView.dart';
import 'package:flutter_all_widget/akshit/Dismissible.dart';
import 'package:flutter_all_widget/akshit/bottomsheet.dart';
import 'package:flutter_all_widget/akshit/buttons.dart';
import 'package:flutter_all_widget/akshit/day20.dart';
import 'package:flutter_all_widget/akshit/drawer.dart';
import 'package:flutter_all_widget/akshit/dropdown.dart';
import 'package:flutter_all_widget/akshit/snakbar.dart';
import 'package:flutter_all_widget/cirlce_avatar.dart';
import 'package:flutter_all_widget/custom_drawer/home_section.dart';
import 'package:flutter_all_widget/decoration_container.dart';
import 'package:flutter_all_widget/drawer_bottom_nav/home.dart';
import 'package:flutter_all_widget/expand_widget.dart';
import 'package:flutter_all_widget/flutter_hero/CalculaterApp/Pages/HomePage.dart';
import 'package:flutter_all_widget/inkwell.dart';
import 'package:flutter_all_widget/listviews.dart';
import 'package:flutter_all_widget/margin_padding.dart';
import 'package:flutter_all_widget/row_colunm.dart';
import 'package:flutter_all_widget/splash_screen.dart';
import 'package:flutter_all_widget/splash_screen2.dart';
import 'package:flutter_all_widget/splash_screen3.dart';
import 'package:flutter_all_widget/task/handa_connect.dart';
import 'package:flutter_all_widget/task/widget/custom_alert_dialog.dart';
import 'package:flutter_all_widget/akshit/container_sized.dart';
import 'package:flutter_all_widget/akshit/rowscols.dart';

import 'image_add.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light,primaryColor:Colors.orange,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     // home:ImageAdd()
     //  home: RowColounm(),
     // home: Inkwell(),'
      // home: Listviews()
      // home: DecorationContainer(),
      // home: ExpandWidget(),
      // home: MarginPadding(),
      // home: CircleAvatarDemos()
      // home: SplashScreen2(),
      //home: SplashScreen3(),
      //home: Listviews(),
  //home: HandaConnect(),
    //home: CustomAlertDialog(),
     // home:ContainerSized(),
     // home: Rowscols(),
     // home: Buttons(),
     // home: SnakbarWidget(),
     // home: DismissibleWidget(),
//home: DrawerWidget(),
    //home: BottomsheetWidget(),
     // home: DropdownWidget(),
     // home: HomeScreen(),
     // home: Day20(),
     //  home: HomeSection(),
      home: CalculatorHomeScreen(),

    );
  }
}

