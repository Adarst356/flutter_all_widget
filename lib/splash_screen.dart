import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_all_widget/decoration_container.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(  // Navigator ek bar spash scrreen open hone  pe back karne pe nhii dikhega
          context, MaterialPageRoute
        (builder: (context) => DecorationContainer(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(child: Text("Flutter Splash Screen", style: TextStyle(
            fontSize: 25,
          fontWeight: FontWeight.w900,
          color: Colors.white

        ),)),
      ),
    );
  }
}
