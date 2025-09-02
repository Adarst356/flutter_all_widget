import 'package:flutter/material.dart';

class FontfamilyDemo extends StatelessWidget {
  const FontfamilyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FontFamily"),
      ),
      body: Center(child: Text("Hello FusionCode",style:TextStyle(fontFamily:'fontMain',fontSize: 40) ,)),
    );
  }
}
