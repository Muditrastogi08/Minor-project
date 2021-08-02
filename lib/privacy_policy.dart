import 'package:flutter/material.dart';

class privacyandpolicy extends StatefulWidget {
  const privacyandpolicy({Key? key}) : super(key: key);

  @override
  _privacyandpolicyState createState() => _privacyandpolicyState();
}

class _privacyandpolicyState extends State<privacyandpolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy And Policy'),
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
                    'Privacy and Policy Page',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
