import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
    );
  }
}
