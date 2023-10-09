import 'package:flutter/material.dart';
import '../styles/color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GameLogo(),
        ),
      ),
    );
  }
}

class GameLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 250.0,
          height: 250.0,
          child: Stack(
            alignment: Alignment.center,
            children: [
              letterWithBorder("+", 30.0, 30.0, null, null),
              letterWithBorder("-", null, 30.0, 30.0, null),
              letterWithBorder("×", 30.0, null, null, 30.0),
              letterWithBorder("÷", null, null, 30.0, 30.0),
            ],
          ),
        ),
        //const SizedBox(height: 5.0), // Add spacing between the logo and text
        const Text(
          "Count Game",
          style: TextStyle(
            fontSize: 40.0, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
            color: base,
            fontFamily: "Homenaje",
          ),
        ),
      ],
    );
  }

  Widget letterWithBorder(
      String letter, double? left, double? top, double? right, double? bottom) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: Container(
        alignment: Alignment.center,
        width: 93.0, // Adjusted size
        height: 93.0, // Adjusted size
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 3.0,
          ),
          //borderRadius: BorderRadius.circular(15.0), // Adjusted border radius
        ),
        child: Text(
          letter,
          style: const TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.normal,
            fontFamily: "SulphurPoint",
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
