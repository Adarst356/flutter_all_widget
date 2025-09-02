import 'package:flutter/material.dart';

class Scrollview extends StatelessWidget {
  const Scrollview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Hello'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(    // single line scrollview
          child: Column(
            children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, // Horizontal Scroll Karne ke liye singlescrollview me diya gya hai
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 11),
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.only(right:10 ),
                    color: Colors.deepPurple,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 11),                  height: 200,
                    width: 200,
                    margin: EdgeInsets.only(right:10 ),
                    color: Colors.greenAccent,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 11),                  height: 200,
                    width: 200,
                    margin: EdgeInsets.only(right:10 ),
                    color: Colors.purple,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 11),                  height: 200,
                    width: 200,
                    margin: EdgeInsets.only(right:10 ),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: Colors.amberAccent,

              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height:200,
                color: Colors.deepPurple,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 11),
                color: Colors.blue,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 11),
                color: Colors.lightBlue,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 11),
                color: Colors.amberAccent,

              ),
              Container(
                height:200,
                margin: EdgeInsets.only(bottom: 11),
                color: Colors.deepPurple,
              ),
              Container(
                height: 200,
                  margin: EdgeInsets.only(bottom: 11),
                color: Colors.blue,
              )



            ],
          ),
        ),
      ),
    );
  }
}
