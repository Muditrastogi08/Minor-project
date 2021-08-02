import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:minor_project/login.dart';
import 'package:minor_project/register.dart';

import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.orange[800]),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.orange, Colors.red],
            ),
          ),
        ),
        title: Row(
          children: [
            const SizedBox(
              width: 60.0,
            ),
            const Text(
              'VERZEO',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.yellowAccent])),
          child: Column(
            children: [
              MyHeaderDrawer(),
            ],
          ),
        ),
      ),
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.orange, Colors.yellowAccent])),
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/verzeo.png'),
                radius: 80.0,
              ),
              const SizedBox(height: 50.0),
              ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                buttonColor: Colors.white,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Text('LOGIN',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const login()));
                  },
                ),
              ),
              SizedBox(height: 50.0),
              ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                buttonColor: Colors.orange,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Text(
                    'REGISTER',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const register()));
                  },
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
            ],
          ),
        )
      ]),
    );
  }
}
