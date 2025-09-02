import 'package:flutter/material.dart';

class SnakbarWidget extends StatelessWidget {
  const SnakbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar')),
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            onPressed: () {
              final snackbar = SnackBar(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                behavior: SnackBarBehavior.floating,
                duration: const Duration(milliseconds: 3000),
                backgroundColor: Colors.yellow,
                content: Text(
                  "This is an Error",
                  style: TextStyle(color: Colors.black),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
            child: Text("Show Snackbar",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
