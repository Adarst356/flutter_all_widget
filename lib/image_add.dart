import 'package:flutter/material.dart';
import 'package:flutter_all_widget/new_screen.dart';

class ImageAdd extends StatelessWidget {
  const ImageAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar
        (title: const Text("Image")),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assest/image/avtar.jpg",
            width: 200,
            height: 200,
          ),
          ElevatedButton(onPressed:(){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewScreen()),
            );
          }, child: Text("Next"))
            
        ],
      )
    );
  }
}
