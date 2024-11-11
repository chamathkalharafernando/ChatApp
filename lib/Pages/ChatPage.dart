import 'package:chatapp/CusotmUI/CustomCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [    // Changed from {} to []
    ChatModel(
        name: "Chamath",
        isGroup: false,
        currentMessage: "Hi Everyone",
        time: "11:35",
        icon: "person.svg"),
    ChatModel(
        name: "Mithun",
        isGroup: false,
        currentMessage: "Hi",
        time: "11:36",
        icon: "person.svg"),
    ChatModel(
        name: "Praveen",
        isGroup: false,
        currentMessage: "Hi chamath",
        time: "13:35",
        icon: "person.svg"),
    ChatModel(
        name: "Chamath Group",
        isGroup: true,
        currentMessage: "Hi Everyone",
        time: "11:35",
        icon: "group.svg"),
    ChatModel(
        name: "Family",
        isGroup: true,
        currentMessage: "Hi Everyone",
        time: "15:35",
        icon: "group.svg"),
  ];    // Added semicolon here

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF128C7E), // Added WhatsApp green color
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),
      body: ListView.builder(itemCount: chats.length,itemBuilder: (context,index)=> CustomCard(chatModel:chats[index]),
      ),
    );
  }
}