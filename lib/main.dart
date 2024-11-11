import 'package:chatapp/screens/Homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "OpenSans",
        // Primary color for app bar
        primaryColor: Color(0xFF075E54),
        // Color for floating action buttons, etc
        secondaryHeaderColor: Color(0xFF128C7E),
        // Add this to ensure the color is applied throughout the app
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF075E54),
          elevation: 0,
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white60,
          indicatorColor: Colors.white,
        ),
      ),
      home: Homescreen(),
    );
  }
}
