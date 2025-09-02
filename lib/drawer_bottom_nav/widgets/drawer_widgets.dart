import 'package:flutter/material.dart';

Widget buildHeader({
  required String urlImage,
  required String name,
  required String email,
  required VoidCallback onClicked,
}) =>
    InkWell(
      onTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(urlImage),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 18, color: Colors.white)),
                const SizedBox(height: 4),
                Text(email,
                    style: const TextStyle(
                        fontSize: 14, color: Colors.white70)),
              ],
            )
          ],
        ),
      ),
    );


Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: const TextStyle(color: color, fontSize: 16),
    ),
    hoverColor: Colors.white24,
    onTap: onClicked,
  );
}

Widget buildSearchField(){
  final color = Colors.white;
  return TextField(
    style: TextStyle(color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      hintText: 'Search',
      hintStyle: TextStyle(color: color),
      prefixIcon: Icon(Icons.search,color: color,),
      filled: true,
      fillColor: Colors.white12,
        enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5)
    ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      )),
  );
}
