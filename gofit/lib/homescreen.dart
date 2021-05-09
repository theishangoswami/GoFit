import 'package:flutter/material.dart';
import 'package:gofit/instructions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("GoFit Now!",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                )),
            Center(
              child: MaterialButton(
                elevation: 30,
                color: Color(0xFF023E8A),
                shape: CircleBorder(),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => InstructionsScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(100),
                  child: Text(
                    'START',
                    style: TextStyle(
                        color: Colors.white, fontSize: 28, letterSpacing: 2),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                  "Staying fit is now fun! Play the game. Control your character. Stay fit.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
