import 'package:flutter/material.dart';

class BlackScreen extends StatefulWidget {
  @override
  _BlackScreenState createState() => _BlackScreenState();
}

class _BlackScreenState extends State<BlackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Text(
          "Currently Playing...\n\nDouble tap to exit.",
          style: TextStyle(color: Colors.white, fontSize: 20),
        )));
  }
}
