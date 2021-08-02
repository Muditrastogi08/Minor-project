import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  _contactsState createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
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
                    'Your Contacts will appear Here',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
