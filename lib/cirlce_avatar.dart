import 'package:flutter/material.dart';

class CircleAvatarDemos extends StatelessWidget {
  const CircleAvatarDemos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Circle Avatar"),
      ),
      body: Center(
          child: CircleAvatar(
          //  child:Text("Name",style: TextStyle(fontSize: 20,color: Colors.white),) ,
         //  minRadius: 50,
            maxRadius: 50,
          //  backgroundImage: AssetImage("assest/image/avtar.jpg"),
            backgroundColor: Colors.lightGreenAccent,
          ),
        ),

    );
  }
}
