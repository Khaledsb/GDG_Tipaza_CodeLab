import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Settings"),
      ),
      body: new ListView(
        padding: const EdgeInsets.only(left: 10.0),
        children: <Widget>[
          newElement(Icons.network_wifi, "Wifi Settings"),
          newElement(Icons.bluetooth, "Bluetooth Settings"),
          newElement(Icons.battery_alert, "Battery Settings"),
          newElement(Icons.signal_cellular_4_bar, "SIM Settings"),
          newElement(Icons.account_circle, "Account Settings"),
          newElement(Icons.accessibility, "Accessibility Settings"),
          newElement(Icons.system_update, "System Settings"),
        ],
      ),
    );
  }
}

GestureDetector newElement(icon, text) {
  return GestureDetector(
      onTap: () {
        print(text);
      },
      child: new Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 5.0),
        child: new Row(
          children: <Widget>[
            new Expanded(
              child: new Icon(
                icon,
                color: Colors.blueGrey,
              ),
              flex: 1,
            ),
            new Expanded(
              child: new Text(
                text,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
              flex: 3,
            ),
            new Expanded(
              child: Icon(
                Icons.open_in_new,
                color: Colors.blueGrey,
              ),
              flex: 1,
            ),
          ],
        ),
      ));
}
