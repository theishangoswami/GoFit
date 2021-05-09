import 'package:flutter/material.dart';
import 'package:gofit/black_screen.dart';

class InstructionsScreen extends StatefulWidget {
  @override
  _InstructionsScreenState createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<InstructionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF023E8A),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text(
            "Instructions",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Step 1: Open laptop and visit \nbit.ly/goFit",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Step 2: Enter this code in the game window:",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: new Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "628710",
                    style: TextStyle(
                        color: Color(0xFF023E8A),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2,
                        fontSize: 26),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Step 3: Hold the phone in your left hand with straight body.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Step 4: Start the game and enjoy!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Center(
                child: MaterialButton(
                  color: Color(0xFF023E8A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BlackScreen()));
                  },
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
