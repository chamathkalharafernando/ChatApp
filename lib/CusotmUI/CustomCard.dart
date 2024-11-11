import 'package:chatapp/Model/ChatModel.dart';
import 'package:chatapp/screens/IndividualPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  final VoidCallback? onTap;
  final ChatModel chatModel; // Moved up with other declarations

  CustomCard({
    Key? key, // Updated to use nullable Key
    this.onTap,
    required this.chatModel, // Made required since it's needed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>Individualpage(chatModel: chatModel)));
      }, // Use the provided callback
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                chatModel.isGroup
                    ? "assets/groups.svg"
                    : "assets/person.svg", // Use icon from chatModel
                color: Colors.white,
                height: 37,
                width: 37,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name, // Use name from chatModel
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(
                  width: 13,
                ),
                Text(
                  chatModel.currentMessage, // Use currentMessage from chatModel
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            trailing: Text(chatModel.time), // Use time from chatModel
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}
