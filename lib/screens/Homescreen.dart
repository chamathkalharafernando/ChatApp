import 'package:chatapp/Pages/ChatPage.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Whatsapp Clone",
          style: TextStyle(color: Colors.white), // Added white color
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          PopupMenuButton<String>(
            icon: Icon(
              Icons.more_vert, // Three dots icon
              color: Colors.white, // Added white color
            ),
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: Text("New broadcast"),
                  value: "New broadcast",
                ),
                PopupMenuItem(
                  child: Text("Whatsapp Web"),
                  value: "Whatsapp Web",
                ),
                PopupMenuItem(
                  child: Text("Starred messages"),
                  value: "Starred messages",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("camera"),
          ChatPage(),
          Text("status"),
          Text("calls"),
        ],
      ),
    );
  }
}
