import 'package:flutter/material.dart';
import 'package:minor_project/register.dart';
import 'package:minor_project/help&support.dart';
import 'package:minor_project/privacy_policy.dart';
import 'package:minor_project/settings.dart';

import 'login.dart';
import 'contacts.dart';
import 'dashboard.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.orange, Colors.red])),
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                height: 120.0,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/verzeo.png'),
                    )),
              ),
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dashboard()));
              },
              leading: Icon(Icons.dashboard_outlined, color: Colors.white),
              title: Text(
                'DashBoard',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const contacts()));
              },
              leading: Icon(Icons.contact_page, color: Colors.white),
              title: Text(
                'contacts',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const login()));
              },
              leading: Icon(Icons.login, color: Colors.white),
              title: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const register()));
              },
              leading:
                  Icon(Icons.app_registration_rounded, color: Colors.white),
              title: Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const settings()));
              },
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const helpandsupport()));
              },
              leading: Icon(Icons.help, color: Colors.white),
              title: Text(
                'Help & Support',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const privacyandpolicy()));
              },
              leading: Icon(Icons.privacy_tip, color: Colors.white),
              title: Text(
                'Privacy & Policy',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ],
    );
  }
}
