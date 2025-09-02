import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            color: Theme.of(context).primaryColor,
            child: ListView(
              children: [
                DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: Container(
                  //  color: Colors.green,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            'https://t4.ftcdn.net/jpg/03/83/25/83/240_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg',
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Anuradha",style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                            Text('annu@123',style: TextStyle(color:Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.folder, color: Colors.white),
                  title: Text('My Files', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.group, color: Colors.white),
                  title: Text(
                    'Shared with me',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.star, color: Colors.white),
                  title: Text('Starred', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.delete, color: Colors.white),
                  title: Text('Trash', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.upload, color: Colors.white),
                  title: Text('Upload', style: TextStyle(color: Colors.white)),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.share, color: Colors.white),
                  title: Text('Share', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.logout, color: Colors.white),
                  title: Text('Logout', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(title: Text('Drawer Widget')),
      body: Container(child: Center(child: Text('Hey there'))),
    );
  }
}
