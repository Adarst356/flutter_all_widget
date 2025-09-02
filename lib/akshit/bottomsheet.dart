import 'package:flutter/material.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bottom Sheet Widgets',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Show Bottom Sheet"),
          onPressed: () {
            showModalBottomSheet(
              isDismissible: false,
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              context: context,

              builder: (context) {
                return Column(
                  mainAxisSize:MainAxisSize.min
                  ,
                  children: [
                    ListTile(
                      title: Text("Orange"),
                      subtitle: Text("Karan")
                    ),
                    ListTile(
                        title: Text("Apple"),
                        subtitle: Text("Adarsh")
                    ),
                    ListTile(
                        title: Text("Mango"),
                        subtitle: Text("Ritesh")
                    ),
                    ListTile(
                        title: Text("Banana"),
                        subtitle: Text("Pathak")
                    ),
                    ListTile(
                        title: Text("Papaya"),
                        subtitle: Text("Ajay")
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
