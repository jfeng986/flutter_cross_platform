import 'package:flutter/material.dart';
import '../styles/color.dart'; // Importing your color styles.

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitchedOption1 = false;
  bool _isSwitchedOption2 = false;
  bool _isSwitchedOption3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.grey),
        title: Text(
          'Settings',
          style: TextStyle(
            color: base,
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
            fontFamily: "SulphurPoint",
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0), // <-- Added const
        children: [
          const SizedBox(height: 80.0), // <-- Added const
          buildOptionTile('Music', _isSwitchedOption1, (value) {
            setState(() {
              _isSwitchedOption1 = value;
            });
          }),
          buildOptionTile('Sound FX', _isSwitchedOption2, (value) {
            setState(() {
              _isSwitchedOption2 = value;
            });
          }),
          buildOptionTile('Vibrate', _isSwitchedOption3, (value) {
            setState(() {
              _isSwitchedOption3 = value;
            });
          }),
        ],
      ),
    );
  }

  Widget buildOptionTile(
      String title, bool isSwitched, void Function(bool) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24.0,
                color: base,
                fontFamily: "SulphurPoint",
              ),
            ),
          ),
          const Spacer(),
          Switch(
            value: isSwitched,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
