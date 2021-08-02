import 'package:flutter/material.dart';

class helpandsupport extends StatefulWidget {
  const helpandsupport({Key? key}) : super(key: key);

  @override
  _helpandsupportState createState() => _helpandsupportState();
}

class _helpandsupportState extends State<helpandsupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help and Support'),
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
                    'Help and Support',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
