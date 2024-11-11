import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  CustomCard({Key? key}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
      ),
      title: Text(
        "Chamath",
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
            "Hi Chamath",
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ],
      ),
      trailing: Text("10:13"),
    );
  }
}
