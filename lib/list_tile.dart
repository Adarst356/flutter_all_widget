import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile Demo',
      debugShowCheckedModeBanner: false,
      home: ListTileScreen(),
    );
  }
}

class ListTileScreen extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'name': 'Adarsh Tiwari', 'subtitle': 'Flutter Developer'},
    {'name': 'Sourav', 'subtitle': 'Android Dev'},
    {'name': 'Ravi', 'subtitle': 'Backend Developer'},
    {'name': 'Aman', 'subtitle': 'UI/UX Designer'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                contacts[index]['name']![0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(contacts[index]['name']!),
            subtitle: Text(contacts[index]['subtitle']!),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Show SnackBar or print on console
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${contacts[index]['name']} tapped'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
