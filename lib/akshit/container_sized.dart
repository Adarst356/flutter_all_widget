import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Container And SizedBox"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.cyan,
           // shape: BoxShape.circle
           // borderRadius: BorderRadius.circular(50)
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 5,
                color: Colors.black
              )
            ]
          ),
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
