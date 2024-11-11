import 'package:flutter/material.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter_svg/svg.dart';

class Individualpage extends StatefulWidget {
  Individualpage({
    Key? key, // Updated to use nullable Key,
    required this.chatModel, // Made required since it's needed
  }) : super(key: key);

  final ChatModel chatModel;

  @override
  State<Individualpage> createState() => _IndividualpageState();
}

class _IndividualpageState extends State<Individualpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 24,
              ),
              CircleAvatar(
                child: SvgPicture.asset(
                  widget.chatModel.isGroup
                      ? "assets/groups.svg"
                      : "assets/person.svg", // Use icon from chatModel
                  color: Colors.white,
                  height: 37,
                  width: 37,
                ),
                radius: 20,
                backgroundColor: Colors.blueGrey,
              )
            ],
          ),
        ),
        title: InkWell(
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(
                      fontSize: 18.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  "last seen today at 12:05",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                )
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
            color: Colors.white,
          ),
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
                    child: Text("View Contact"),
                    value: "View Contact",
                  ),
                  PopupMenuItem(
                    child: Text("Media,Links and Docs"),
                    value: "Media,Links and Docs",
                  ),
                  PopupMenuItem(
                    child: Text("Whatsapp Web"),
                    value: "Whatsapp Web",
                  ),
                  PopupMenuItem(
                    child: Text("Search"),
                    value: "Search",
                  ),
                  PopupMenuItem(
                    child: Text("Mute Notification"),
                    value: "Mute Notification",
                  ),
                  PopupMenuItem(
                    child: Text("Wallpaper"),
                    value: "Wallpaper",
                  ),
                ];
              })
        ],
      ),
    );
  }
}
