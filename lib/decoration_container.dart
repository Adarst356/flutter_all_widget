import 'package:flutter/material.dart';

class DecorationContainer extends StatelessWidget {
  const DecorationContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Decoration Container"),
      ),
      body: Container(
       width: double.infinity,
        height: double.infinity,


        child: Center(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(  // Box decoration ke under hi color dena hai
              color: Colors.blueGrey,

              // borderRadius: BorderRadius.only(topLeft: Radius.circular(21),bottomRight: Radius.circular(21)) // Radius den ke liye
             // borderRadius:BorderRadius.all(Radius.circular(21)),  //if yiou give in the shape border radius the remove the the radiuds
              border: Border.all(
                width: 7,
                color: Colors.black
              ),

              boxShadow: [
                BoxShadow(
                  blurRadius: 11,
                  color: Colors.grey,
                  spreadRadius: 7

                ),
              ],
                shape: BoxShape.circle
            ),

          ),
        ),
      ),
    );
  }
}
