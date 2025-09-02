import 'package:flutter/material.dart';

class RowColounm extends StatelessWidget {
  const RowColounm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Row and Column")),
      body: Container(
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Vertically spaced evenly
          crossAxisAlignment: CrossAxisAlignment.start,      //  Align to left horizontally
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('R1', style: TextStyle(fontSize: 40)),
                Text('R2', style: TextStyle(fontSize: 40)),
                Text('C3', style: TextStyle(fontSize: 40)),
                Text('D4', style: TextStyle(fontSize: 40)),
              ],
            ),
            Text('A', style: TextStyle(fontSize: 40)),
            Text('B', style: TextStyle(fontSize: 40)),
            Text('C', style: TextStyle(fontSize: 40)),
            Text('D', style: TextStyle(fontSize: 40)),
            ElevatedButton(onPressed: () {}, child: Text("Click")),
          ],
        ),
      ),
    );
  }
}
