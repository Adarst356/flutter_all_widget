import 'package:flutter/material.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({super.key});

  final List<Map<String, dynamic>> items = const [
    {
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSZsINAeXhg_aONZrbZrMTZEjopaRJ1xmlVA&s",
      "title": "Alice",
    },
    {
      "image": "https://i.pravatar.cc/150?img=2",
      "title": "Bob",
    },
    {
      "image": "https://i.pravatar.cc/150?img=3",
      "title": "Charlie",
    },
    {
      "image": "https://i.pravatar.cc/150?img=4",
      "title": "Diana",
    },
    {
      "image": "https://i.pravatar.cc/150?img=5",
      "title": "Eve",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10), // margin changed to 10

                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // color removed
                ),
                child: ClipOval(
                  child: Image.network(
                    item["image"] ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                item["title"] ?? "Title",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
