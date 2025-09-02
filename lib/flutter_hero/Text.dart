import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
            children: [
              Flexible(
                child: Text(
                  "Flutter Hero Subscribe ",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                    letterSpacing: 1.5,
                    wordSpacing: 2,
                    backgroundColor: Colors.green
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
