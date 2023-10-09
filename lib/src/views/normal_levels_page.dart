import 'package:flutter/material.dart';
import '../components/three_x_three.dart';
import '../components/five_x_five.dart';
import '../components/seven_x_seven.dart';
import '../components/nine_x_nine.dart';
import '../styles/color.dart';

class NormalLevelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Levels',
          style: TextStyle(
            color: base,
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            fontFamily: "SulphurPoint",
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.grey),
      ),
      body: Stack(children: [
        Align(
          // Added this Align widget
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 100.0),
              const Text(
                "Normal",
                style: TextStyle(
                  fontSize: 40.0, // Adjust the font size as needed
                  fontWeight: FontWeight.bold,
                  color: base,
                  fontFamily: "Homenaje",
                ),
              ),
              const SizedBox(height: 30.0),
              const Text("Choice a level to start the game",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: base,
                    fontFamily: "SulphurPoint",
                  ),
                  textAlign: TextAlign.center),
              const SizedBox(height: 80.0),
              ThreeXThree(),
              const SizedBox(height: 30.0),
              FiveXFive(),
              const SizedBox(height: 30.0),
              SevenXSeven(),
              const SizedBox(height: 30.0),
              NineXNine()
            ],
          ),
        ),
      ]),
    );
  }
}
