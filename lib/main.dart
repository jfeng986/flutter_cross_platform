import 'package:flutter/material.dart';
import 'src/components/game_logo.dart';
import 'src/styles/color.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Icon(Icons.signal_cellular_alt, color: Colors.grey),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message, color: Colors.grey),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //import game logo
              GameLogo(),
              const SizedBox(height: 100.0),
              ElevatedButton(
                onPressed: () {},
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
                child: const Text('Normal'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
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
                child: const Text('Challenge'),
              ),

              const Spacer(), // This will push everything else to the top
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.settings, size: 30.0, color: base),
                  Icon(Icons.shopping_cart, size: 30.0, color: base),
                  Icon(Icons.flag, size: 30.0, color: base),
                  Icon(Icons.star, size: 30.0, color: base),
                ],
              ),
              const SizedBox(
                  height: 20.0), // To give some space from the bottom edge
            ],
          ),
        ],
      ),
    );
  }
}
