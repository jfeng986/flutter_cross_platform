import 'package:flutter/material.dart';
import '../styles/color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: NineXNine(),
        ),
      ),
    );
  }
}

class NineXNine extends StatelessWidget {
  static const double buttonWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: buttonWidth,
          child: ElevatedButton(
            onPressed: () {
              //Navigator.push(
              //context,
              //MaterialPageRoute(builder: (context) => LevelsPage()),
              //    );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: base,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: const BorderSide(color: base),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 15.0),
            ),
            child: const Text(
              '9 × 9',
              style: TextStyle(
                fontSize: 24.0, // Adjust the font size as needed
                fontWeight: FontWeight.w600,
                color: base,
                fontFamily: "SulphurPoint",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
