import 'package:flutter/material.dart';
import 'src/components/game_logo.dart';
import 'src/styles/color.dart';
import 'src/views/settings_page.dart';
import 'src/views/normal_levels_page.dart';
import 'src/views/challege_levels_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count Game',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  static const double buttonWidth = 230.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GameLogo(),
              const SizedBox(height: 100.0),
              SizedBox(
                width: buttonWidth,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NormalLevelsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: base,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: base),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 15.0),
                  ),
                  child: const Text(
                    'Normal',
                    style: TextStyle(
                      fontSize: 24.0, // Adjust the font size as needed
                      fontWeight: FontWeight.w600,
                      color: base,
                      fontFamily: "SulphurPoint",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: buttonWidth,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChallegeLevelsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: base,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: base),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 15.0),
                  ),
                  child: const Text(
                    'Challenge',
                    style: TextStyle(
                      fontSize: 24.0, // Adjust the font size as needed
                      fontWeight: FontWeight.w600,
                      color: base,
                      fontFamily: "SulphurPoint",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: buttonWidth,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: base,
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: const BorderSide(color: base),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60.0, vertical: 15.0),
                  ),
                  child: const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 24.0, // Adjust the font size as needed
                      fontWeight: FontWeight.w600,
                      color: base,
                      fontFamily: "SulphurPoint",
                    ),
                  ),
                ),
              ),
              const Spacer(), // This will push everything else to the top
              const Row(),
              const SizedBox(
                  height: 20.0), // To give some space from the bottom edge
            ],
          ),
        ],
      ),
    );
  }
}
