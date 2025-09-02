import 'package:flutter/material.dart';

class MarginPadding extends StatelessWidget {
  const MarginPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margin Padding"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top:11,left: 34),
        child: Container(
          color: Colors.blueAccent,
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Text("Hello World", style: TextStyle(fontSize: 25),)),
      ),
    );
  }
}
