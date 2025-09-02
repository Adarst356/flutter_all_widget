import 'package:flutter/material.dart';

class Container extends StatefulWidget {
  const Container({super.key});

  @override
  State<Container> createState() => _State();
}

class _State extends State<Container> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Flutter Container"),
      ),
      body: Container(),
    );
  }
}
