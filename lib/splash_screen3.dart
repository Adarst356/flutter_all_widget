import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen3 extends StatefulWidget {
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
   Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
                'assest/animation/student.json',
              height: 300,
              width: 300,
              fit: BoxFit.contain
            ),
          ],
        ),
      ),



    );
  }
}
