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
        padding: const EdgeInsets.all(20.0),
        children: <Widget>[
          newElement(Icons.network_wifi, "Wifi Settings"),
          newElement(Icons.bluetooth, "Bluetooth Settings"),
          newElement(Icons.battery_alert, "Battery Settings"),
          newElement(Icons.signal_cellular_4_bar, "SIM Settings"),
          newElement(Icons.account_circle, "Account Settings"),
          newElement(Icons.accessibility, "Accessibility Settings"),
          newElement(Icons.system_update, "System Settings"),
      ],)
      ,
    );
  }
}


Padding newElement(icon, text) {
  return   Padding(
    padding: const EdgeInsets.all(8.0),
    child: new Row(
                 children: <Widget>[
                   new Expanded(
                     flex: 1,
                     child: new Icon(icon),
                   ),
                    new Expanded(
                     flex: 3,
                     child: new Text(text)
                   ),
                    new Expanded(
                     flex: 1,
                     child: new Icon(Icons.open_in_new),
                   )
                 ],
               ),
  );
}