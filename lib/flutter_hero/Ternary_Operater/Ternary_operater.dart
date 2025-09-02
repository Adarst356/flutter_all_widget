import 'package:flutter/material.dart';

class TernaryOperater extends StatefulWidget {
  const TernaryOperater({super.key});

  @override
  State<TernaryOperater> createState() => _TernaryOperaterState();
}

class _TernaryOperaterState extends State<TernaryOperater> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body: Column(
   mainAxisAlignment: MainAxisAlignment.center,
   children: [
     Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         ElevatedButton(
             onPressed: (){
          setState(() {
            isDark = !isDark;
          });
             },
             child: isDark ? Icon(
               Icons.dark_mode,
               size: 50,
             )
                 : Icon(
               Icons.light_mode, size: 50,
             )
         )
       ],
     )
   ],
 ),
    );
  }
}
