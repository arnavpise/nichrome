//import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    String name = " ";
    String email = " ";
    Uint8List? image;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text(
          "Profile",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Center(
              child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://w0.peakpx.com/wallpaper/368/441/HD-wallpaper-cute-anime-girl-anime-cat-girl-anime-girl-cartoon-cat-girl-cute-anime-thumbnail.jpg'),
                radius: 80,
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.camera_alt_outlined),
                  ))
            ],
          )),
          SizedBox(height: 30.0,),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text("Name"),
            subtitle: Text(name)
          ),
          SizedBox(height: 20.0,),
          ListTile(
              leading: Icon(Icons.alternate_email_outlined),
              title: Text("Email id"),
              subtitle: Text("Username@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          ),
          SizedBox(height: 20.0,),
          ListTile(
              leading: Icon(Icons.folder_open),
              title: Text("Role"),
            subtitle: Text("Sales Person",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          SizedBox(height: 20.0,),
          ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Year"),
              subtitle: Text("SE",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),

        ]),
      ),
    );
  }
}
