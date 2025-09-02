import 'package:flutter/material.dart';

class Listviews extends StatelessWidget {
  const Listviews ({super.key});

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Raman','Ajay','Vijay', 'Ram', 'Shyam','Abhi'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("ListView"),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context, index) {
          return  Text(arrNames[index],
            style:
            TextStyle(fontSize:21 ,fontWeight: FontWeight.w300),);
        },
        itemCount: arrNames.length,
          itemExtent:100 ,
          scrollDirection:Axis.horizontal ,
        )

      )
    );
  }
}
