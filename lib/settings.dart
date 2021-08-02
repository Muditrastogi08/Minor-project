import 'package:flutter/material.dart';

// ignore: camel_case_types
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.yellowAccent])),
        ),
        Center(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  child: const Text(
                    'Settings Page',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
