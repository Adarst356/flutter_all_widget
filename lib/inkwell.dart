import 'package:flutter/material.dart';

class Inkwell extends StatelessWidget {
  const Inkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello")),
      body: Center(
        child: InkWell(
         onTap: (){
         print("Tapped on Container");
         },
          onLongPress: (){
            print("Long-Tapped on Container");
          },

          onDoubleTap: (){
            print("Double-Tapped on Container");
          },
          child: Container(
            width: 200,
            height: 200,
            color:Colors.orange,
            child: Center(
                child: InkWell(
                  onTap: (){
                    print("Text Widget Tapped");
                  },
                    child: Text(
                      "Click here",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                    ))),
          ),
        ),
      ),
    );
  }
}
